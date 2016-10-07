
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:15 10/07/2016 
// Design Name: 
// Module Name:    Inverse_of_Matrix 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Inverse_of_Matrix(o00, o01, o02, o03, o04, o05, o06, o07, o08, o09, 
 o10, o11, o12, o13, o14, o15, o16, o17, o18, o19,
 o20, o21, o22, o23, o24, o25, o26, o27, o28, o29,
 o30, o31, o32, o33, o34, o35, o36, o37, o38, o39,
 o40, o41, o42, o43, o44, o45, o46, o47, o48, o49, clk);


output  reg signed[31:0] o00, o01, o02, o03, o04, o05, o06, o07, o08, o09;
output  reg signed [31:0] o10, o11, o12, o13, o14, o15, o16, o17, o18, o19;
output  reg signed [31:0] o20, o21, o22, o23, o24, o25, o26, o27, o28, o29;
output  reg signed [31:0] o30, o31, o32, o33, o34, o35, o36, o37, o38, o39;
output  reg signed [31:0] o40, o41, o42, o43, o44, o45, o46, o47, o48, o49;

input clk;

reg signed [31:0] Mat[49:0];

initial
begin
        
        Mat[0] <= 1; 
        Mat[1] <= 0; 
        Mat[2] <= 0; 
        Mat[3] <= 0; 
        Mat[4] <= 1; 
        Mat[5] <= 1; 
        Mat[6] <= 0; 
        Mat[7] <= 0; 
        Mat[8] <= 0; 
        Mat[9] <= 0;
        Mat[10] <= 0; 
        Mat[11] <= 1; 
        Mat[12] <= 3; 
        Mat[13] <= 0; 
        Mat[14] <= 0; 
        Mat[15] <= 0; 
        Mat[16] <= 1; 
        Mat[17] <= 0; 
        Mat[18] <= 0; 
        Mat[19] <= 0;
        Mat[20] <= 0; 
        Mat[21] <= 0; 
        Mat[22] <= 1; 
        Mat[23] <= 0; 
        Mat[24] <= 0; 
        Mat[25] <= 0; 
        Mat[26] <= 0; 
        Mat[27] <= 1; 
        Mat[28] <= 0; 
        Mat[29] <= 0;
        Mat[30] <= 0; 
        Mat[31] <= 1; 
        Mat[32] <= 0; 
        Mat[33] <= 1; 
        Mat[34] <= 0; 
        Mat[35] <= 0; 
        Mat[36] <= 0; 
        Mat[37] <= 0; 
        Mat[38] <= 1; 
        Mat[39] <= 0;
        Mat[40] <= 0; 
        Mat[41] <= 0; 
        Mat[42] <= 0; 
        Mat[43] <= 0; 
        Mat[44] <= 1; 
        Mat[45] <= 0; 
        Mat[46] <= 0; 
        Mat[47] <= 0; 
        Mat[48] <= 0; 
        Mat[49] <= 1;        

end

always@(posedge clk)
begin
    
    // for column 0 elements swapping
    
    if(Mat[0] == 0)
    begin
        if(Mat[10] == 0)
        begin
            if(Mat[20] == 0)
            begin
                if(Mat[30] == 0)
                begin
                    if(Mat[40] == 0)
                    begin
                    //    Matrix Not Invertible
                    end
                    else
                    begin
                        Mat[00] <= Mat[40];
                        Mat[01] <= Mat[41];
                        Mat[02] <= Mat[42];
                        Mat[03] <= Mat[43];
                        Mat[04] <= Mat[44];
                        Mat[05] <= Mat[45];
                        Mat[06] <= Mat[46];
                        Mat[07] <= Mat[47];
                        Mat[08] <= Mat[48];
                        Mat[09] <= Mat[49];
                        
                        Mat[40] <= Mat[00];
                        Mat[41] <= Mat[01];
                        Mat[42] <= Mat[02];
                        Mat[43] <= Mat[03];
                        Mat[44] <= Mat[04];
                        Mat[45] <= Mat[05];
                        Mat[46] <= Mat[06];
                        Mat[47] <= Mat[07];
                        Mat[48] <= Mat[08];
                        Mat[49] <= Mat[09];
                    end
                end
                else
                begin
                        Mat[00] <= Mat[30];
                        Mat[01] <= Mat[31];
                        Mat[02] <= Mat[32];
                        Mat[03] <= Mat[33];
                        Mat[04] <= Mat[34];
                        Mat[05] <= Mat[35];
                        Mat[06] <= Mat[36];
                        Mat[07] <= Mat[37];
                        Mat[08] <= Mat[38];
                        Mat[09] <= Mat[39];
                        
                        Mat[30] <= Mat[00];
                        Mat[31] <= Mat[01];
                        Mat[32] <= Mat[02];
                        Mat[33] <= Mat[03];
                        Mat[34] <= Mat[04];
                        Mat[35] <= Mat[05];
                        Mat[36] <= Mat[06];
                        Mat[37] <= Mat[07];
                        Mat[38] <= Mat[08];
                        Mat[39] <= Mat[09];                
                end
            end
            else
            begin
                        Mat[00] <= Mat[20];
                        Mat[01] <= Mat[21];
                        Mat[02] <= Mat[22];
                        Mat[03] <= Mat[23];
                        Mat[04] <= Mat[24];
                        Mat[05] <= Mat[25];
                        Mat[06] <= Mat[26];
                        Mat[07] <= Mat[27];
                        Mat[08] <= Mat[28];
                        Mat[09] <= Mat[29];
                        
                        Mat[20] <= Mat[00];
                        Mat[21] <= Mat[01];
                        Mat[22] <= Mat[02];
                        Mat[23] <= Mat[03];
                        Mat[24] <= Mat[04];
                        Mat[25] <= Mat[05];
                        Mat[26] <= Mat[06];
                        Mat[27] <= Mat[07];
                        Mat[28] <= Mat[08];
                        Mat[29] <= Mat[09];            
            end
        end
        else
        begin
                        Mat[00] <= Mat[10];
                        Mat[01] <= Mat[11];
                        Mat[02] <= Mat[12];
                        Mat[03] <= Mat[13];
                        Mat[04] <= Mat[14];
                        Mat[05] <= Mat[15];
                        Mat[06] <= Mat[16];
                        Mat[07] <= Mat[17];
                        Mat[08] <= Mat[18];
                        Mat[09] <= Mat[19];
                        
                        Mat[10] <= Mat[00];
                        Mat[11] <= Mat[01];
                        Mat[12] <= Mat[02];
                        Mat[13] <= Mat[03];
                        Mat[14] <= Mat[04];
                        Mat[15] <= Mat[05];
                        Mat[16] <= Mat[06];
                        Mat[17] <= Mat[07];
                        Mat[18] <= Mat[08];
                        Mat[19] <= Mat[09];        
        end
    end
    
    //    zeroing elements under column 1 pivot
    
    if(Mat[10] != 0)
    begin
    //    substract row 1
    Mat[10] <= Mat[10] * Mat[00] - Mat[00] * Mat[10];
    Mat[11] <= Mat[11] * Mat[00] - Mat[01] * Mat[10];
    Mat[12] <= Mat[12] * Mat[00] - Mat[02] * Mat[10];
    Mat[13] <= Mat[13] * Mat[00] - Mat[03] * Mat[10];
    Mat[14] <= Mat[14] * Mat[00] - Mat[04] * Mat[10];
    Mat[15] <= Mat[15] * Mat[00] - Mat[05] * Mat[10];
    Mat[16] <= Mat[16] * Mat[00] - Mat[06] * Mat[10];
    Mat[17] <= Mat[17] * Mat[00] - Mat[07] * Mat[10];
    Mat[18] <= Mat[18] * Mat[00] - Mat[08] * Mat[10];
    Mat[19] <= Mat[19] * Mat[00] - Mat[09] * Mat[10];
    end
    
    if(Mat[20] != 0)
    begin
    //    substract row 2
    Mat[20] <= Mat[20] * Mat[00] - Mat[00] * Mat[20];
    Mat[21] <= Mat[21] * Mat[00] - Mat[01] * Mat[20];
    Mat[22] <= Mat[22] * Mat[00] - Mat[02] * Mat[20];
    Mat[23] <= Mat[23] * Mat[00] - Mat[03] * Mat[20];
    Mat[24] <= Mat[24] * Mat[00] - Mat[04] * Mat[20];
    Mat[25] <= Mat[25] * Mat[00] - Mat[05] * Mat[20];
    Mat[26] <= Mat[26] * Mat[00] - Mat[06] * Mat[20];
    Mat[27] <= Mat[27] * Mat[00] - Mat[07] * Mat[20];
    Mat[28] <= Mat[28] * Mat[00] - Mat[08] * Mat[20];
    Mat[29] <= Mat[29] * Mat[00] - Mat[09] * Mat[20];
    end
    
    if(Mat[30] != 0)
    begin
    //    substract row 3
    Mat[30] <= Mat[30] * Mat[00] - Mat[00] * Mat[30];
    Mat[31] <= Mat[31] * Mat[00] - Mat[01] * Mat[30];
    Mat[32] <= Mat[32] * Mat[00] - Mat[02] * Mat[30];
    Mat[33] <= Mat[33] * Mat[00] - Mat[03] * Mat[30];
    Mat[34] <= Mat[34] * Mat[00] - Mat[04] * Mat[30];
    Mat[35] <= Mat[35] * Mat[00] - Mat[05] * Mat[30];
    Mat[36] <= Mat[36] * Mat[00] - Mat[06] * Mat[30];
    Mat[37] <= Mat[37] * Mat[00] - Mat[07] * Mat[30];
    Mat[38] <= Mat[38] * Mat[00] - Mat[08] * Mat[30];
    Mat[39] <= Mat[39] * Mat[00] - Mat[09] * Mat[30];
    end
    
    if(Mat[40] != 0)
    begin
    //    substract row 4
    Mat[40] <= Mat[40] * Mat[00] - Mat[00] * Mat[40];
    Mat[41] <= Mat[41] * Mat[00] - Mat[01] * Mat[40];
    Mat[42] <= Mat[42] * Mat[00] - Mat[02] * Mat[40];
    Mat[43] <= Mat[43] * Mat[00] - Mat[03] * Mat[40];
    Mat[44] <= Mat[44] * Mat[00] - Mat[04] * Mat[40];
    Mat[45] <= Mat[45] * Mat[00] - Mat[05] * Mat[40];
    Mat[46] <= Mat[46] * Mat[00] - Mat[06] * Mat[40];
    Mat[47] <= Mat[47] * Mat[00] - Mat[07] * Mat[40];
    Mat[48] <= Mat[48] * Mat[00] - Mat[08] * Mat[40];
    Mat[49] <= Mat[49] * Mat[00] - Mat[09] * Mat[40];
    end
    
    
    //    for column 1 elements swapping
    
    if(Mat[11] == 0)
    begin
        if(Mat[21] == 0)
        begin
            if(Mat[31] == 0)
            begin
                if(Mat[41] == 0)
                begin
                    //    Matrix Not Invertible
                end
                else
                begin
                        Mat[10] <= Mat[40];
                        Mat[11] <= Mat[41];
                        Mat[12] <= Mat[42];
                        Mat[13] <= Mat[43];
                        Mat[14] <= Mat[44];
                        Mat[15] <= Mat[45];
                        Mat[16] <= Mat[46];
                        Mat[17] <= Mat[47];
                        Mat[18] <= Mat[48];
                        Mat[19] <= Mat[49];
                        
                        Mat[40] <= Mat[10];
                        Mat[41] <= Mat[11];
                        Mat[42] <= Mat[12];
                        Mat[43] <= Mat[13];
                        Mat[44] <= Mat[14];
                        Mat[45] <= Mat[15];
                        Mat[46] <= Mat[16];
                        Mat[47] <= Mat[17];
                        Mat[48] <= Mat[18];
                        Mat[49] <= Mat[19];                    
                end
            end
            else
            begin
                        Mat[10] <= Mat[30];
                        Mat[11] <= Mat[31];
                        Mat[12] <= Mat[32];
                        Mat[13] <= Mat[33];
                        Mat[14] <= Mat[34];
                        Mat[15] <= Mat[35];
                        Mat[16] <= Mat[36];
                        Mat[17] <= Mat[37];
                        Mat[18] <= Mat[38];
                        Mat[19] <= Mat[39];
                        
                        Mat[30] <= Mat[10];
                        Mat[31] <= Mat[11];
                        Mat[32] <= Mat[12];
                        Mat[33] <= Mat[13];
                        Mat[34] <= Mat[14];
                        Mat[35] <= Mat[15];
                        Mat[36] <= Mat[16];
                        Mat[37] <= Mat[17];
                        Mat[38] <= Mat[18];
                        Mat[39] <= Mat[19];                
            end
        end
        else
        begin
                        Mat[10] <= Mat[20];
                        Mat[11] <= Mat[21];
                        Mat[12] <= Mat[22];
                        Mat[13] <= Mat[23];
                        Mat[14] <= Mat[24];
                        Mat[15] <= Mat[25];
                        Mat[16] <= Mat[26];
                        Mat[17] <= Mat[27];
                        Mat[18] <= Mat[28];
                        Mat[19] <= Mat[29];
                        
                        Mat[20] <= Mat[10];
                        Mat[21] <= Mat[11];
                        Mat[22] <= Mat[12];
                        Mat[23] <= Mat[13];
                        Mat[24] <= Mat[14];
                        Mat[25] <= Mat[15];
                        Mat[26] <= Mat[16];
                        Mat[27] <= Mat[17];
                        Mat[28] <= Mat[18];
                        Mat[29] <= Mat[19];        
        end
    end
    
    if(Mat[21] != 0)
    begin
    //    substract row 2
    Mat[20] <= Mat[20] * Mat[11] - Mat[10] * Mat[21];
    Mat[21] <= Mat[21] * Mat[11] - Mat[11] * Mat[21];
    Mat[22] <= Mat[22] * Mat[11] - Mat[12] * Mat[21];
    Mat[23] <= Mat[23] * Mat[11] - Mat[13] * Mat[21];
    Mat[24] <= Mat[24] * Mat[11] - Mat[14] * Mat[21];
    Mat[25] <= Mat[25] * Mat[11] - Mat[15] * Mat[21];
    Mat[26] <= Mat[26] * Mat[11] - Mat[16] * Mat[21];
    Mat[27] <= Mat[27] * Mat[11] - Mat[17] * Mat[21];
    Mat[28] <= Mat[28] * Mat[11] - Mat[18] * Mat[21];
    Mat[29] <= Mat[29] * Mat[11] - Mat[19] * Mat[21];
    end
    
    if(Mat[31] != 0)
    begin
    //    substract row 3
    Mat[30] <= Mat[30] * Mat[11] - Mat[10] * Mat[31];
    Mat[31] <= Mat[31] * Mat[11] - Mat[11] * Mat[31];
    Mat[32] <= Mat[32] * Mat[11] - Mat[12] * Mat[31];
    Mat[33] <= Mat[33] * Mat[11] - Mat[13] * Mat[31];
    Mat[34] <= Mat[34] * Mat[11] - Mat[14] * Mat[31];
    Mat[35] <= Mat[35] * Mat[11] - Mat[15] * Mat[31];
    Mat[36] <= Mat[36] * Mat[11] - Mat[16] * Mat[31];
    Mat[37] <= Mat[37] * Mat[11] - Mat[17] * Mat[31];
    Mat[38] <= Mat[38] * Mat[11] - Mat[18] * Mat[31];
    Mat[39] <= Mat[39] * Mat[11] - Mat[19] * Mat[31];
    end
    
    if(Mat[41] != 0)
    begin
    //    substract row 4
    Mat[40] <= Mat[40] * Mat[11] - Mat[10] * Mat[41];
    Mat[41] <= Mat[41] * Mat[11] - Mat[11] * Mat[41];
    Mat[42] <= Mat[42] * Mat[11] - Mat[12] * Mat[41];
    Mat[43] <= Mat[43] * Mat[11] - Mat[13] * Mat[41];
    Mat[44] <= Mat[44] * Mat[11] - Mat[14] * Mat[41];
    Mat[45] <= Mat[45] * Mat[11] - Mat[15] * Mat[41];
    Mat[46] <= Mat[46] * Mat[11] - Mat[16] * Mat[41];
    Mat[47] <= Mat[47] * Mat[11] - Mat[17] * Mat[41];
    Mat[48] <= Mat[48] * Mat[11] - Mat[18] * Mat[41];
    Mat[49] <= Mat[49] * Mat[11] - Mat[19] * Mat[41];
    end    
    
    // for column 2 swapping elements
    
    if(Mat[22] == 0)
    begin
        if(Mat[32] == 0)
        begin
            if(Mat[42] == 0)
            begin
                //    Matrix Not Invertible
            end
            else
            begin
                        Mat[20] <= Mat[40];
                        Mat[21] <= Mat[41];
                        Mat[22] <= Mat[42];
                        Mat[23] <= Mat[43];
                        Mat[24] <= Mat[44];
                        Mat[25] <= Mat[45];
                        Mat[26] <= Mat[46];
                        Mat[27] <= Mat[47];
                        Mat[28] <= Mat[48];
                        Mat[29] <= Mat[49];
                        
                        Mat[40] <= Mat[20];
                        Mat[41] <= Mat[21];
                        Mat[42] <= Mat[22];
                        Mat[43] <= Mat[23];
                        Mat[44] <= Mat[24];
                        Mat[45] <= Mat[25];
                        Mat[46] <= Mat[26];
                        Mat[47] <= Mat[27];
                        Mat[48] <= Mat[28];
                        Mat[49] <= Mat[29];                
            end
        end
        else
        begin
                        Mat[20] <= Mat[30];
                        Mat[21] <= Mat[31];
                        Mat[22] <= Mat[32];
                        Mat[23] <= Mat[33];
                        Mat[24] <= Mat[34];
                        Mat[25] <= Mat[35];
                        Mat[26] <= Mat[36];
                        Mat[27] <= Mat[37];
                        Mat[28] <= Mat[38];
                        Mat[29] <= Mat[39];
                        
                        Mat[30] <= Mat[20];
                        Mat[31] <= Mat[21];
                        Mat[32] <= Mat[22];
                        Mat[33] <= Mat[23];
                        Mat[34] <= Mat[24];
                        Mat[35] <= Mat[25];
                        Mat[36] <= Mat[26];
                        Mat[37] <= Mat[27];
                        Mat[38] <= Mat[28];
                        Mat[39] <= Mat[29];                    
        end
    end
    
    
    
    if(Mat[32] != 0)
    begin
    //    substract row 3
    Mat[30] <= Mat[30] * Mat[22] - Mat[20] * Mat[32];
    Mat[31] <= Mat[31] * Mat[22] - Mat[21] * Mat[32];
    Mat[32] <= Mat[32] * Mat[22] - Mat[22] * Mat[32];
    Mat[33] <= Mat[33] * Mat[22] - Mat[23] * Mat[32];
    Mat[34] <= Mat[34] * Mat[22] - Mat[24] * Mat[32];
    Mat[35] <= Mat[35] * Mat[22] - Mat[25] * Mat[32];
    Mat[36] <= Mat[36] * Mat[22] - Mat[26] * Mat[32];
    Mat[37] <= Mat[37] * Mat[22] - Mat[27] * Mat[32];
    Mat[38] <= Mat[38] * Mat[22] - Mat[28] * Mat[32];
    Mat[39] <= Mat[39] * Mat[22] - Mat[29] * Mat[32];
    end
    
    if(Mat[42] != 0)
    begin
    //    substract row 4
    Mat[40] <= Mat[40] * Mat[22] - Mat[20] * Mat[42];
    Mat[41] <= Mat[41] * Mat[22] - Mat[21] * Mat[42];
    Mat[42] <= Mat[42] * Mat[22] - Mat[22] * Mat[42];
    Mat[43] <= Mat[43] * Mat[22] - Mat[23] * Mat[42];
    Mat[44] <= Mat[44] * Mat[22] - Mat[24] * Mat[42];
    Mat[45] <= Mat[45] * Mat[22] - Mat[25] * Mat[42];
    Mat[46] <= Mat[46] * Mat[22] - Mat[26] * Mat[42];
    Mat[47] <= Mat[47] * Mat[22] - Mat[27] * Mat[42];
    Mat[48] <= Mat[48] * Mat[22] - Mat[28] * Mat[42];
    Mat[49] <= Mat[49] * Mat[22] - Mat[29] * Mat[42];
    end    

    //    for column 3 elements swapping
    
    if(Mat[33] == 0)
    begin
        if(Mat[43] == 0)
        begin
        //    Matrix Not Invertible
        end
        else
        begin
                        Mat[30] <= Mat[40];
                        Mat[31] <= Mat[41];
                        Mat[32] <= Mat[42];
                        Mat[33] <= Mat[43];
                        Mat[34] <= Mat[44];
                        Mat[35] <= Mat[45];
                        Mat[36] <= Mat[46];
                        Mat[37] <= Mat[47];
                        Mat[38] <= Mat[48];
                        Mat[39] <= Mat[49];
                        
                        Mat[40] <= Mat[30];
                        Mat[41] <= Mat[31];
                        Mat[42] <= Mat[32];
                        Mat[43] <= Mat[33];
                        Mat[44] <= Mat[34];
                        Mat[45] <= Mat[35];
                        Mat[46] <= Mat[36];
                        Mat[47] <= Mat[37];
                        Mat[48] <= Mat[38];
                        Mat[49] <= Mat[39];                
        end
    end
    
    if(Mat[43] != 0)
    begin
    //    substract row 4
    Mat[40] <= Mat[40] * Mat[33] - Mat[30] * Mat[43];
    Mat[41] <= Mat[41] * Mat[33] - Mat[31] * Mat[43];
    Mat[42] <= Mat[42] * Mat[33] - Mat[32] * Mat[43];
    Mat[43] <= Mat[43] * Mat[33] - Mat[33] * Mat[43];
    Mat[44] <= Mat[44] * Mat[33] - Mat[34] * Mat[43];
    Mat[45] <= Mat[45] * Mat[33] - Mat[35] * Mat[43];
    Mat[46] <= Mat[46] * Mat[33] - Mat[36] * Mat[43];
    Mat[47] <= Mat[47] * Mat[33] - Mat[37] * Mat[43];
    Mat[48] <= Mat[48] * Mat[33] - Mat[38] * Mat[43];
    Mat[49] <= Mat[49] * Mat[33] - Mat[39] * Mat[43];
    end    
    
    //    for column 4 elements swapping
    
    if(Mat[44] == 0)
    begin
        // Matrix Not Invertible
    end
    else 
    begin
    Mat[34] <= Mat[34] * Mat[44] - Mat[34] * Mat[44];
    Mat[35] <= Mat[35] * Mat[44] - Mat[34] * Mat[45];
    Mat[36] <= Mat[36] * Mat[44] - Mat[34] * Mat[46];
    Mat[37] <= Mat[37] * Mat[44] - Mat[34] * Mat[47];
    Mat[38] <= Mat[38] * Mat[44] - Mat[34] * Mat[48];
    Mat[39] <= Mat[39] * Mat[44] - Mat[34] * Mat[49];
    
    Mat[24] <= Mat[24] * Mat[44] - Mat[24] * Mat[44];
    Mat[25] <= Mat[25] * Mat[44] - Mat[24] * Mat[45];
    Mat[26] <= Mat[26] * Mat[44] - Mat[24] * Mat[46];
    Mat[27] <= Mat[27] * Mat[44] - Mat[24] * Mat[47];
    Mat[28] <= Mat[28] * Mat[44] - Mat[24] * Mat[48];
    Mat[29] <= Mat[29] * Mat[44] - Mat[24] * Mat[49];
    
    Mat[14] <= Mat[14] * Mat[44] - Mat[14] * Mat[44];
    Mat[15] <= Mat[15] * Mat[44] - Mat[14] * Mat[45];
    Mat[16] <= Mat[16] * Mat[44] - Mat[14] * Mat[46];
    Mat[17] <= Mat[17] * Mat[44] - Mat[14] * Mat[47];
    Mat[18] <= Mat[18] * Mat[44] - Mat[14] * Mat[48];
    Mat[19] <= Mat[19] * Mat[44] - Mat[14] * Mat[49];
    
    Mat[04] <= Mat[04] * Mat[44] - Mat[04] * Mat[44];
    Mat[05] <= Mat[05] * Mat[44] - Mat[04] * Mat[45];
    Mat[06] <= Mat[06] * Mat[44] - Mat[04] * Mat[46];
    Mat[07] <= Mat[07] * Mat[44] - Mat[04] * Mat[47];
    Mat[08] <= Mat[08] * Mat[44] - Mat[04] * Mat[48];
    Mat[09] <= Mat[09] * Mat[44] - Mat[04] * Mat[49];
    
    end
    if(Mat[33]==0)
    begin
        //Inverse doesnot excist
    end
    else
    begin
    Mat[23] <= Mat[23] * Mat[33] - Mat[23] * Mat[33];
    Mat[24] <= Mat[24] * Mat[33] - Mat[23] * Mat[34];
    Mat[25] <= Mat[25] * Mat[33] - Mat[23] * Mat[35];
    Mat[26] <= Mat[26] * Mat[33] - Mat[23] * Mat[36];
    Mat[27] <= Mat[27] * Mat[33] - Mat[23] * Mat[37];
    Mat[28] <= Mat[28] * Mat[33] - Mat[23] * Mat[38];
    Mat[29] <= Mat[29] * Mat[33] - Mat[23] * Mat[39];
    
    Mat[13] <= Mat[13] * Mat[33] - Mat[13] * Mat[33];
    Mat[14] <= Mat[14] * Mat[33] - Mat[13] * Mat[34];
    Mat[15] <= Mat[15] * Mat[33] - Mat[13] * Mat[35];
    Mat[16] <= Mat[16] * Mat[33] - Mat[13] * Mat[36];
    Mat[17] <= Mat[17] * Mat[33] - Mat[13] * Mat[37];
    Mat[18] <= Mat[18] * Mat[33] - Mat[13] * Mat[38];
    Mat[19] <= Mat[19] * Mat[33] - Mat[13] * Mat[39];
    
    Mat[03] <= Mat[03] * Mat[33] - Mat[03] * Mat[33];
    Mat[04] <= Mat[04] * Mat[33] - Mat[03] * Mat[34];
    Mat[05] <= Mat[05] * Mat[33] - Mat[03] * Mat[35];
    Mat[06] <= Mat[06] * Mat[33] - Mat[03] * Mat[36];
    Mat[07] <= Mat[07] * Mat[33] - Mat[03] * Mat[37];
    Mat[08] <= Mat[08] * Mat[33] - Mat[03] * Mat[38];
    Mat[09] <= Mat[09] * Mat[33] - Mat[03] * Mat[39];
    end
    
    if(Mat[22]==0)
    begin
        //Inverse does not exist
    end
    else
    begin
    Mat[12] <= Mat[12] * Mat[22] - Mat[12] * Mat[22];
    Mat[13] <= Mat[13] * Mat[22] - Mat[12] * Mat[23];
    Mat[14] <= Mat[14] * Mat[22] - Mat[12] * Mat[24];
    Mat[15] <= Mat[15] * Mat[22] - Mat[12] * Mat[25];
    Mat[16] <= Mat[16] * Mat[22] - Mat[12] * Mat[26];
    Mat[17] <= Mat[17] * Mat[22] - Mat[12] * Mat[27];
    Mat[18] <= Mat[18] * Mat[22] - Mat[12] * Mat[28];
    Mat[19] <= Mat[19] * Mat[22] - Mat[12] * Mat[29];
    
    Mat[02] <= Mat[02] * Mat[22] - Mat[02] * Mat[22];
    Mat[03] <= Mat[03] * Mat[22] - Mat[02] * Mat[23];
    Mat[04] <= Mat[04] * Mat[22] - Mat[02] * Mat[24];
    Mat[05] <= Mat[05] * Mat[22] - Mat[02] * Mat[25];
    Mat[06] <= Mat[06] * Mat[22] - Mat[02] * Mat[26];
    Mat[07] <= Mat[07] * Mat[22] - Mat[02] * Mat[27];
    Mat[08] <= Mat[08] * Mat[22] - Mat[02] * Mat[28];
    Mat[09] <= Mat[09] * Mat[22] - Mat[02] * Mat[29];
   end
    
  if(Mat[11]==0)
    begin
        //Inverse does not exist
    end
    else
    begin
    Mat[01] <= Mat[01] * Mat[11] - Mat[01] * Mat[11];
   Mat[02] <= Mat[02] * Mat[11] - Mat[01] * Mat[12];
    Mat[03] <= Mat[03] * Mat[11] - Mat[01] * Mat[13];
    Mat[04] <= Mat[04] * Mat[11] - Mat[01] * Mat[14];
    Mat[05] <= Mat[05] * Mat[11] - Mat[01] * Mat[15];
    Mat[06] <= Mat[06] * Mat[11] - Mat[01] * Mat[16];
    Mat[07] <= Mat[07] * Mat[11] - Mat[01] * Mat[17];
    Mat[08] <= Mat[08] * Mat[11] - Mat[01] * Mat[18];
    Mat[09] <= Mat[09] * Mat[11] - Mat[01] * Mat[19];
    end
    
end

endmodule
