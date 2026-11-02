# -*- coding: utf-8 -*-
from flask import Flask, render_template, request
import xml.etree.ElementTree as ET
from lxml import etree
import os

app = Flask(__name__)

def search_artist(name):
    """Recherche un artiste par nom dans le fichier XML"""
    try:
        tree = ET.parse('ArtistAlgerian.xml')
        for artist in tree.findall('artist'):
            if name.lower() in artist.find('name').text.lower():
                return artist
        return None
    except Exception as e:
        print(f"Erreur : {str(e)}")
        return None

@app.route('/', methods=['GET', 'POST'])
def index():
    artist = None
    if request.method == 'POST':
        artist_name = request.form.get('artist_name', '').strip()
        if artist_name:
            artist = search_artist(artist_name)
    return render_template('index.html', artist=artist)

@app.route('/xslt')
def afficher_liste():
    try:
        xml = etree.parse("ArtistAlgerian.xml")
        xslt = etree.parse("ArtistAlgerian.xsl")
        transform = etree.XSLT(xslt)
        result = transform(xml)
        return str(result)
    except Exception as e:
        return f"Erreur lors de la transformation XSLT : {str(e)}"

if __name__ == '__main__':
    app.run(debug=True)
