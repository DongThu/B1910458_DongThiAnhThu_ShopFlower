// import connection
import db from "../config/database.js";

// get all flowers
export const getFlowers = (result) => {
    db.query("SELECT * FROM flower", (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};

// get single flowers
export const getFlowerById = (id,result) => {
    db.query("SELECT * FROM flower WHERE flower_id = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};

// insert flower
export const insertFlower = (data,result) => {
    db.query("INSERT INTO flower SET ?",data, (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results[0]);
        }
    });
};

// update flower
export const updateFlowerById = (data,id,result) => {
    db.query("UPDATE flower SET flower_name = ?, flower_price = ? WHERE flower_id = ?",[data.flower_name, data.flower_price, id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};


// delete flower
export const deleteFlowerById = (id,result) => {
    db.query("DELETE FROM flower WHERE flower_id = ?",[id], (err,results)=> {
        if (err){
            console.log(err);
            result(err,null);
        }else{
            result(null,results);
        }
    });
};