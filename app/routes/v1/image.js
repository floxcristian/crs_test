'use strict'

// Load modules
const express = require('express');
const { imageCtrl } = require('../../controllers');
//const fs = require('fs');
//const path = require('path');
//const { checkToken } = require('../../middlewares/authenticated');


const api = express.Router();

// Routes and controllers
api.get('/', (req, res)=>{
    console.log("nicol!!!!!");
})
api.get('/images/:category_type/:image_file', imageCtrl.getImages);

module.exports = api;


/*app.get('/images/:fileType/:image', checkToken, (req, res) => {

    let file_type = req.params.fileType;
    let image = req.params.image;

    //RUTA DE LA IMAGEN
    let image_path = path.resolve(__dirname, `../../../uploads/${file_type}/${image}`);

    //SI EL PATH DE LA IMAGEN EXISTE...
    if (fs.existsSync(image_path)) {
        return res.sendFile(image_path)
    } else {
        let image_default_path = path.resolve(__dirname, '../../assets/default_placeholder.png');
        return res.sendFile(image_default_path);
    }


    //PODRIA MANDAR IMAGEN DEFAULT DESDE EL CLIENTE??
})

module.exports = app;*/