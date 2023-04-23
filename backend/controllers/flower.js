// import functions from flower model

import {
    getFlowers,
    getFlowerById,
    insertFlower,
    updateFlowerById,
    deleteFlowerById,
} from "../models/FlowerModel.js";

// get all flowers
export const showFlowers=(req,res)=>{
    getFlowers((err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// get single flower
export const showFlowerById=(req,res)=>{
    getFlowerById(req.params.id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// create flower
export const createFlower=(req,res)=>{
    const data = req.body;
    insertFlower(data,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};

// update flower
export const updateFlower=(req,res)=>{
    const data = req.body;
    const id = req.params.id;
    updateFlowerById(data,id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};


// delete flower
export const deleteFlower=(req,res)=>{
    const id = req.params.id;
    deleteFlowerById(id,(err,results)=> {
        if (err) {
            res.send(err);
        }else {
            res.json(results);
        }
    });
};