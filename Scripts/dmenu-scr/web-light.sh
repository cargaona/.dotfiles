#!/bin/zsh
source ~/.zshrc
SCR_PATH=$MY_FOLDER/Scripts
choices="Any\nN26\nGalicia Contre\nMercadopago Contre\nGalicia Codelamp\nLichess\nMercadopago Codelamp\nYoutube\nTwitter\nDeemix"

chosen=$(echo -e "$choices" | dmenu -i -p "Select Layout: " -sb "#8F7DAB")

case "$chosen" in
	"N26")
        exec brave --profile-directory="Contre" --app=https://app.n26.com/login;;
	"Deemix")
        exec brave --profile-directory="Contre" --app=http://localhost:6595;;
	"Youtube")
        exec brave --profile-directory="Contre" --app=https://youtube.com;;
	"Lichess")
        exec brave --profile-directory="Contre" --app=https://lichess.org;;
	"Twitter")
        exec brave --profile-directory="Contre" --app=https://twitter.com;;
	"Any")
      exec brave --profile-directory="Contre" --app=https://$(zenity --entry --text="Website  :");;
	"Galicia Contre")
        exec brave --profile-directory="Contre" --app=https://onlinebanking.bancogalicia.com.ar/login;;
	"Galicia Codelamp")
        exec brave --profile-directory="Codelamp" --app=https://onlinebanking.bancogalicia.com.ar/login;;
	"Mercadopago Contre")
        exec brave --profile-directory="Contre" --app=https://www.mercadopago.com.ar/home;;
	"Mercadopago Codelamp")
        exec brave --profile-directory="Codelamp" --app=https://www.mercadopago.com.ar/home;;
esac
