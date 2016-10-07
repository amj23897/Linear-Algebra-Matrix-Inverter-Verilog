`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:05 10/07/2016 
// Design Name: 
// Module Name:    aug_aug_matrix_inverse_calculator 
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
module matrix_inverse_calculator(clk);
input clk;
reg [31:0] aug_mat[49:0];
reg nonInvertible_flag;
reg [31:0] temp;

//0 to 9 represents first row . 10 to 19 represents second row .. and so on
//initializing values directly . this can be fetched from ROM by creating an IP core
initial begin
nonInvertible_flag = 0;
aug_mat[0] = 1;
aug_mat[1] = 0;
aug_mat[2] = 0;
aug_mat[3] = 0;
aug_mat[4] = 1;
aug_mat[5] = 1;
aug_mat[6] = 0;
aug_mat[7] = 0;
aug_mat[8] = 0;
aug_mat[9] = 0;
aug_mat[10] = 0;
aug_mat[11] = 1;
aug_mat[12] = 3;
aug_mat[13] = 0;
aug_mat[14] = 0;
aug_mat[15] = 0;
aug_mat[16] = 1;
aug_mat[17] = 0;
aug_mat[18] = 0;
aug_mat[19] = 0;
aug_mat[20] = 0;
aug_mat[21] = 0;
aug_mat[22] = 1;
aug_mat[23] = 0;
aug_mat[24] = 0;
aug_mat[25] = 0;
aug_mat[26] = 0;
aug_mat[27] = 1;
aug_mat[28] = 0;
aug_mat[29] = 0;
aug_mat[30] = 0;
aug_mat[31] = 1;
aug_mat[32] = 0;
aug_mat[33] = 1;
aug_mat[34] = 0;
aug_mat[35] = 0;
aug_mat[36] = 0;
aug_mat[37] = 0;
aug_mat[38] = 1;
aug_mat[39] = 0;
aug_mat[40] = 0;
aug_mat[41] = 0;
aug_mat[42] = 0;
aug_mat[43] = 0;
aug_mat[44] = 1;
aug_mat[45] = 0;
aug_mat[46] = 0;
aug_mat[47] = 0;
aug_mat[48] = 0;
aug_mat[49] = 1;
end

//Checking pivot in column 1 and swapping rows if required
always@(posedge clk)
begin
	if(aug_mat[0] == 0)
	begin
		if(aug_mat[10] == 0)
		begin
			if(aug_mat[20] == 0)
			begin
				if(aug_mat[30] == 0)
				begin
					if(aug_mat[40] == 0)
					begin
						nonInvertible_flag = 1'b1;
					end
					
					else
					begin
						temp = aug_mat[40];
						aug_mat[40]= aug_mat[0];
						aug_mat[0]=temp;
						
						
						temp = aug_mat[41];
						aug_mat[41]= aug_mat[1];
						aug_mat[1]=temp;
						
						
						temp = aug_mat[42];
						aug_mat[42]= aug_mat[2];
						aug_mat[2]=temp;
						
						
						temp = aug_mat[43];
						aug_mat[43]= aug_mat[3];
						aug_mat[3]=temp;
						
						
						temp = aug_mat[44];
						aug_mat[44]= aug_mat[4];
						aug_mat[4]=temp;
						
						
						temp = aug_mat[45];
						aug_mat[45]= aug_mat[5];
						aug_mat[5]=temp;
						
						
						temp = aug_mat[46];
						aug_mat[46]= aug_mat[6];
						aug_mat[6]=temp;
						
						
						temp = aug_mat[47];
						aug_mat[47]= aug_mat[7];
						aug_mat[7]=temp;
						
						
						temp = aug_mat[48];
						aug_mat[48]= aug_mat[8];
						aug_mat[8]=temp;
						
						
						temp = aug_mat[49];
						aug_mat[49]= aug_mat[9];
						aug_mat[9]=temp;
						
					end
				end
				
				else
				begin
						temp = aug_mat[30];
						aug_mat[30]= aug_mat[0];
						aug_mat[0]=temp;
						
						
						temp = aug_mat[31];
						aug_mat[31]= aug_mat[1];
						aug_mat[1]=temp;
						
						
						temp = aug_mat[32];
						aug_mat[32]= aug_mat[2];
						aug_mat[2]=temp;
						
						
						temp = aug_mat[33];
						aug_mat[33]= aug_mat[3];
						aug_mat[3]=temp;
						
						
						temp = aug_mat[34];
						aug_mat[34]= aug_mat[4];
						aug_mat[4]=temp;
						
						
						temp = aug_mat[35];
						aug_mat[35]= aug_mat[5];
						aug_mat[5]=temp;
						
						
						temp = aug_mat[36];
						aug_mat[36]= aug_mat[6];
						aug_mat[6]=temp;
						
						
						temp = aug_mat[37];
						aug_mat[37]= aug_mat[7];
						aug_mat[7]=temp;
						
						
						temp = aug_mat[38];
						aug_mat[38]= aug_mat[8];
						aug_mat[8]=temp;
						
						
						temp = aug_mat[39];
						aug_mat[39]= aug_mat[9];
						aug_mat[9]=temp;
				end
			end
			
			else
			begin
						temp = aug_mat[20];
						aug_mat[20]= aug_mat[0];
						aug_mat[0]=temp;
						
						
						temp = aug_mat[21];
						aug_mat[21]= aug_mat[1];
						aug_mat[1]=temp;
						
						
						temp = aug_mat[22];
						aug_mat[22]= aug_mat[2];
						aug_mat[2]=temp;
						
						
						temp = aug_mat[23];
						aug_mat[23]= aug_mat[3];
						aug_mat[3]=temp;
						
						
						temp = aug_mat[24];
						aug_mat[24]= aug_mat[4];
						aug_mat[4]=temp;
						
						
						temp = aug_mat[25];
						aug_mat[25]= aug_mat[5];
						aug_mat[5]=temp;
						
						
						temp = aug_mat[26];
						aug_mat[26]= aug_mat[6];
						aug_mat[6]=temp;
						
						
						temp = aug_mat[27];
						aug_mat[27]= aug_mat[7];
						aug_mat[7]=temp;
						
						
						temp = aug_mat[28];
						aug_mat[28]= aug_mat[8];
						aug_mat[8]=temp;
						
						
						temp = aug_mat[29];
						aug_mat[29]= aug_mat[9];
						aug_mat[9]=temp;
			end
		end
		
		else
		begin
						temp = aug_mat[10];
						aug_mat[10]= aug_mat[0];
						aug_mat[0]=temp;
						
						
						temp = aug_mat[11];
						aug_mat[11]= aug_mat[1];
						aug_mat[1]=temp;
						
						
						temp = aug_mat[12];
						aug_mat[12]= aug_mat[2];
						aug_mat[2]=temp;
						
						
						temp = aug_mat[13];
						aug_mat[13]= aug_mat[3];
						aug_mat[3]=temp;
						
						
						temp = aug_mat[14];
						aug_mat[14]= aug_mat[4];
						aug_mat[4]=temp;
						
						
						temp = aug_mat[15];
						aug_mat[15]= aug_mat[5];
						aug_mat[5]=temp;
						
						
						temp = aug_mat[16];
						aug_mat[16]= aug_mat[6];
						aug_mat[6]=temp;
						
						
						temp = aug_mat[17];
						aug_mat[17]= aug_mat[7];
						aug_mat[7]=temp;
						
						
						temp = aug_mat[18];
						aug_mat[18]= aug_mat[8];
						aug_mat[8]=temp;
						
						
						temp = aug_mat[19];
						aug_mat[19]= aug_mat[9];
						aug_mat[9]=temp;
		end	
	end


//Elements under pivot in Column 1 are transformed to zero using Row transforaug_mation

	aug_mat[11] = aug_mat[0] * aug_mat[11] - aug_mat[10] * aug_mat[1];
	aug_mat[12] = aug_mat[0] * aug_mat[12] - aug_mat[10] * aug_mat[2];
	aug_mat[13] = aug_mat[0] * aug_mat[13] - aug_mat[10] * aug_mat[3];
	aug_mat[14] = aug_mat[0] * aug_mat[14] - aug_mat[10] * aug_mat[4];
	aug_mat[15] = aug_mat[0] * aug_mat[15] - aug_mat[10] * aug_mat[5];
	aug_mat[16] = aug_mat[0] * aug_mat[16] - aug_mat[10] * aug_mat[6];
	aug_mat[17] = aug_mat[0] * aug_mat[17] - aug_mat[10] * aug_mat[7];
	aug_mat[18] = aug_mat[0] * aug_mat[18] - aug_mat[10] * aug_mat[8];
	aug_mat[19] = aug_mat[0] * aug_mat[19] - aug_mat[10] * aug_mat[9];
	aug_mat[10] = aug_mat[0] * aug_mat[10] - aug_mat[10] * aug_mat[0];
	
	
	aug_mat[21] = aug_mat[0] * aug_mat[21] - aug_mat[20] * aug_mat[1];
	aug_mat[22] = aug_mat[0] * aug_mat[22] - aug_mat[20] * aug_mat[2];
	aug_mat[23] = aug_mat[0] * aug_mat[23] - aug_mat[20] * aug_mat[3];
	aug_mat[24] = aug_mat[0] * aug_mat[24] - aug_mat[20] * aug_mat[4];
	aug_mat[25] = aug_mat[0] * aug_mat[25] - aug_mat[20] * aug_mat[5];
	aug_mat[26] = aug_mat[0] * aug_mat[26] - aug_mat[20] * aug_mat[6];
	aug_mat[27] = aug_mat[0] * aug_mat[27] - aug_mat[20] * aug_mat[7];
	aug_mat[28] = aug_mat[0] * aug_mat[28] - aug_mat[20] * aug_mat[8];
	aug_mat[29] = aug_mat[0] * aug_mat[29] - aug_mat[20] * aug_mat[9];
	aug_mat[20] = aug_mat[0] * aug_mat[20] - aug_mat[20] * aug_mat[0];

	
	aug_mat[31] = aug_mat[0] * aug_mat[31] - aug_mat[30] * aug_mat[1];
	aug_mat[32] = aug_mat[0] * aug_mat[32] - aug_mat[30] * aug_mat[2];
	aug_mat[33] = aug_mat[0] * aug_mat[33] - aug_mat[30] * aug_mat[3];
	aug_mat[34] = aug_mat[0] * aug_mat[34] - aug_mat[30] * aug_mat[4];
	aug_mat[35] = aug_mat[0] * aug_mat[35] - aug_mat[30] * aug_mat[5];
	aug_mat[36] = aug_mat[0] * aug_mat[36] - aug_mat[30] * aug_mat[6];
	aug_mat[37] = aug_mat[0] * aug_mat[37] - aug_mat[30] * aug_mat[7];
	aug_mat[38] = aug_mat[0] * aug_mat[38] - aug_mat[30] * aug_mat[8];
	aug_mat[39] = aug_mat[0] * aug_mat[39] - aug_mat[30] * aug_mat[9];	
	aug_mat[30] = aug_mat[0] * aug_mat[30] - aug_mat[30] * aug_mat[0];
	
	
	aug_mat[41] = aug_mat[0] * aug_mat[41] - aug_mat[40] * aug_mat[1];
	aug_mat[42] = aug_mat[0] * aug_mat[42] - aug_mat[40] * aug_mat[2];
	aug_mat[43] = aug_mat[0] * aug_mat[43] - aug_mat[40] * aug_mat[3];
	aug_mat[44] = aug_mat[0] * aug_mat[44] - aug_mat[40] * aug_mat[4];
	aug_mat[45] = aug_mat[0] * aug_mat[45] - aug_mat[40] * aug_mat[5];
	aug_mat[46] = aug_mat[0] * aug_mat[46] - aug_mat[40] * aug_mat[6];
	aug_mat[47] = aug_mat[0] * aug_mat[47] - aug_mat[40] * aug_mat[7];
	aug_mat[48] = aug_mat[0] * aug_mat[48] - aug_mat[40] * aug_mat[8];
	aug_mat[49] = aug_mat[0] * aug_mat[49] - aug_mat[40] * aug_mat[9];
	aug_mat[40] = aug_mat[0] * aug_mat[40] - aug_mat[40] * aug_mat[0];

//Checking pivot in column 2 and swapping rows if required
	if(aug_mat[11] == 0)
	begin
		if(aug_mat[21] == 0)
		begin
			if(aug_mat[31] == 0)
			begin
				if(aug_mat[41] == 0)
				begin
					nonInvertible_flag = 1'b1;
				end
				
				else
				begin
						temp = aug_mat[40];
						aug_mat[40]= aug_mat[10];
						aug_mat[10]=temp;
						
						
						temp = aug_mat[41];
						aug_mat[41]= aug_mat[11];
						aug_mat[11]=temp;
						
						
						temp = aug_mat[42];
						aug_mat[42]= aug_mat[12];
						aug_mat[12]=temp;
						
						
						temp = aug_mat[43];
						aug_mat[43]= aug_mat[13];
						aug_mat[13]=temp;
						
						
						temp = aug_mat[44];
						aug_mat[44]= aug_mat[14];
						aug_mat[14]=temp;
						
						
						temp = aug_mat[45];
						aug_mat[45]= aug_mat[15];
						aug_mat[15]=temp;
						
						
						temp = aug_mat[46];
						aug_mat[46]= aug_mat[16];
						aug_mat[16]=temp;
						
						
						temp = aug_mat[47];
						aug_mat[47]= aug_mat[17];
						aug_mat[17]=temp;
						
						
						temp = aug_mat[48];
						aug_mat[48]= aug_mat[18];
						aug_mat[18]=temp;
						
						
						temp = aug_mat[49];
						aug_mat[49]= aug_mat[19];
						aug_mat[19]=temp;					
				end
			end
			
			else
			begin
					temp = aug_mat[30];
					aug_mat[30]= aug_mat[10];
					aug_mat[10]=temp;
					
					
					temp = aug_mat[31];
					aug_mat[31]= aug_mat[11];
					aug_mat[11]=temp;
					
					
					temp = aug_mat[32];
					aug_mat[32]= aug_mat[12];
					aug_mat[12]=temp;
					
					
					temp = aug_mat[33];
					aug_mat[33]= aug_mat[13];
					aug_mat[13]=temp;
					
					
					temp = aug_mat[34];
					aug_mat[34]= aug_mat[14];
					aug_mat[14]=temp;
					
					
					temp = aug_mat[35];
					aug_mat[35]= aug_mat[15];
					aug_mat[15]=temp;
					
					
					temp = aug_mat[36];
					aug_mat[36]= aug_mat[16];
					aug_mat[16]=temp;
					
					
					temp = aug_mat[37];
					aug_mat[37]= aug_mat[17];
					aug_mat[17]=temp;
					
					
					temp = aug_mat[38];
					aug_mat[38]= aug_mat[18];
					aug_mat[18]=temp;
					
					
					temp = aug_mat[39];
					aug_mat[39]= aug_mat[19];
					aug_mat[19]=temp;					
			end
		end
		
		else
		begin
			temp = aug_mat[20];
			aug_mat[20]= aug_mat[10];
			aug_mat[10]=temp;
			
			
			temp = aug_mat[21];
			aug_mat[21]= aug_mat[11];
			aug_mat[11]=temp;
			
			
			temp = aug_mat[22];
			aug_mat[22]= aug_mat[12];
			aug_mat[12]=temp;
			
			
			temp = aug_mat[23];
			aug_mat[23]= aug_mat[13];
			aug_mat[13]=temp;
			
			
			temp = aug_mat[24];
			aug_mat[24]= aug_mat[14];
			aug_mat[14]=temp;
			
			
			temp = aug_mat[25];
			aug_mat[25]= aug_mat[15];
			aug_mat[15]=temp;
			
			
			temp = aug_mat[26];
			aug_mat[26]= aug_mat[16];
			aug_mat[16]=temp;
			
			
			temp = aug_mat[27];
			aug_mat[27]= aug_mat[17];
			aug_mat[17]=temp;
			
			
			temp = aug_mat[28];
			aug_mat[28]= aug_mat[18];
			aug_mat[18]=temp;
			
			
			temp = aug_mat[29];
			aug_mat[29]= aug_mat[19];
			aug_mat[19]=temp;			
		end
	end


//Elements under pivot in Column 2 are transformed to zero using Row transforaug_mation
	
	aug_mat[22] = aug_mat[11] * aug_mat[22] - aug_mat[21] * aug_mat[12];
	aug_mat[23] = aug_mat[11] * aug_mat[23] - aug_mat[21] * aug_mat[13];
	aug_mat[24] = aug_mat[11] * aug_mat[24] - aug_mat[21] * aug_mat[14];
	aug_mat[25] = aug_mat[11] * aug_mat[25] - aug_mat[21] * aug_mat[15];
	aug_mat[26] = aug_mat[11] * aug_mat[26] - aug_mat[21] * aug_mat[16];
	aug_mat[27] = aug_mat[11] * aug_mat[27] - aug_mat[21] * aug_mat[17];
	aug_mat[28] = aug_mat[11] * aug_mat[28] - aug_mat[21] * aug_mat[18];
	aug_mat[29] = aug_mat[11] * aug_mat[29] - aug_mat[21] * aug_mat[19];
	aug_mat[21] = aug_mat[11] * aug_mat[21] - aug_mat[21] * aug_mat[11];
	
	aug_mat[32] = aug_mat[11] * aug_mat[32] - aug_mat[31] * aug_mat[12];
	aug_mat[33] = aug_mat[11] * aug_mat[33] - aug_mat[31] * aug_mat[13];
	aug_mat[34] = aug_mat[11] * aug_mat[34] - aug_mat[31] * aug_mat[14];
	aug_mat[35] = aug_mat[11] * aug_mat[35] - aug_mat[31] * aug_mat[15];
	aug_mat[36] = aug_mat[11] * aug_mat[36] - aug_mat[31] * aug_mat[16];
	aug_mat[37] = aug_mat[11] * aug_mat[37] - aug_mat[31] * aug_mat[17];
	aug_mat[38] = aug_mat[11] * aug_mat[38] - aug_mat[31] * aug_mat[18];
	aug_mat[39] = aug_mat[11] * aug_mat[39] - aug_mat[31] * aug_mat[19];
	aug_mat[31] = aug_mat[11] * aug_mat[31] - aug_mat[31] * aug_mat[11];
	
	aug_mat[42] = aug_mat[11] * aug_mat[42] - aug_mat[41] * aug_mat[12];
	aug_mat[43] = aug_mat[11] * aug_mat[43] - aug_mat[41] * aug_mat[13];
	aug_mat[44] = aug_mat[11] * aug_mat[44] - aug_mat[41] * aug_mat[14];
	aug_mat[45] = aug_mat[11] * aug_mat[45] - aug_mat[41] * aug_mat[15];
	aug_mat[46] = aug_mat[11] * aug_mat[46] - aug_mat[41] * aug_mat[16];
	aug_mat[47] = aug_mat[11] * aug_mat[47] - aug_mat[41] * aug_mat[17];
	aug_mat[48] = aug_mat[11] * aug_mat[48] - aug_mat[41] * aug_mat[18];
	aug_mat[49] = aug_mat[11] * aug_mat[49] - aug_mat[41] * aug_mat[19];
	aug_mat[41] = aug_mat[11] * aug_mat[41] - aug_mat[41] * aug_mat[11];

//Checking pivot in column 3 and swapping rows if required
	if(aug_mat[22] == 0)
	begin
		if(aug_mat[32] == 0)
		begin
			if(aug_mat[42] == 0)
			begin
				nonInvertible_flag = 1'b1;
			end
			
			else
			begin
				temp = aug_mat[40];
				aug_mat[40]= aug_mat[20];
				aug_mat[20]=temp;
				
				
				temp = aug_mat[41];
				aug_mat[41]= aug_mat[21];
				aug_mat[21]=temp;
				
				
				temp = aug_mat[42];
				aug_mat[42]= aug_mat[22];
				aug_mat[22]=temp;
				
				
				temp = aug_mat[43];
				aug_mat[43]= aug_mat[23];
				aug_mat[23]=temp;
				
				
				temp = aug_mat[44];
				aug_mat[44]= aug_mat[24];
				aug_mat[24]=temp;
				
				
				temp = aug_mat[45];
				aug_mat[45]= aug_mat[25];
				aug_mat[25]=temp;
				
				
				temp = aug_mat[46];
				aug_mat[46]= aug_mat[26];
				aug_mat[26]=temp;
				
				
				temp = aug_mat[47];
				aug_mat[47]= aug_mat[27];
				aug_mat[27]=temp;
				
				
				temp = aug_mat[48];
				aug_mat[48]= aug_mat[28];
				aug_mat[28]=temp;
				
				
				temp = aug_mat[49];
				aug_mat[49]= aug_mat[29];
				aug_mat[29]=temp;						
			end
		end
		
		else
		begin
			temp = aug_mat[30];
			aug_mat[30]= aug_mat[20];
			aug_mat[20]=temp;
			
			
			temp = aug_mat[31];
			aug_mat[31]= aug_mat[21];
			aug_mat[21]=temp;
			
			
			temp = aug_mat[32];
			aug_mat[32]= aug_mat[22];
			aug_mat[22]=temp;
			
			
			temp = aug_mat[33];
			aug_mat[33]= aug_mat[23];
			aug_mat[23]=temp;
			
			
			temp = aug_mat[34];
			aug_mat[34]= aug_mat[24];
			aug_mat[24]=temp;
			
			
			temp = aug_mat[35];
			aug_mat[35]= aug_mat[25];
			aug_mat[25]=temp;
			
			
			temp = aug_mat[36];
			aug_mat[36]= aug_mat[26];
			aug_mat[26]=temp;
			
			
			temp = aug_mat[37];
			aug_mat[37]= aug_mat[27];
			aug_mat[27]=temp;
			
			
			temp = aug_mat[38];
			aug_mat[38]= aug_mat[28];
			aug_mat[28]=temp;
			
			
			temp = aug_mat[39];
			aug_mat[39]= aug_mat[29];
			aug_mat[29]=temp;											
		end
	end

//Elements under pivot in Column 4 are transformed to zero using Row transforaug_mation

	aug_mat[33] = aug_mat[22] * aug_mat[33] - aug_mat[32] * aug_mat[23];
	aug_mat[34] = aug_mat[22] * aug_mat[34] - aug_mat[32] * aug_mat[24];
	aug_mat[35] = aug_mat[22] * aug_mat[35] - aug_mat[32] * aug_mat[25];
	aug_mat[36] = aug_mat[22] * aug_mat[36] - aug_mat[32] * aug_mat[26];
	aug_mat[37] = aug_mat[22] * aug_mat[37] - aug_mat[32] * aug_mat[27];
	aug_mat[38] = aug_mat[22] * aug_mat[38] - aug_mat[32] * aug_mat[28];
	aug_mat[39] = aug_mat[22] * aug_mat[39] - aug_mat[32] * aug_mat[29];
	aug_mat[32] = aug_mat[22] * aug_mat[32] - aug_mat[32] * aug_mat[22];
	
	aug_mat[43] = aug_mat[22] * aug_mat[43] - aug_mat[42] * aug_mat[23];
	aug_mat[44] = aug_mat[22] * aug_mat[44] - aug_mat[42] * aug_mat[24];
	aug_mat[45] = aug_mat[22] * aug_mat[45] - aug_mat[42] * aug_mat[25];
	aug_mat[46] = aug_mat[22] * aug_mat[46] - aug_mat[42] * aug_mat[26];
	aug_mat[47] = aug_mat[22] * aug_mat[47] - aug_mat[42] * aug_mat[27];
	aug_mat[48] = aug_mat[22] * aug_mat[48] - aug_mat[42] * aug_mat[28];
	aug_mat[49] = aug_mat[22] * aug_mat[49] - aug_mat[42] * aug_mat[29];	
	aug_mat[42] = aug_mat[22] * aug_mat[42] - aug_mat[42] * aug_mat[22];

//Checking pivot in column 4 and swapping rows if required
	if(aug_mat[33] == 0)
	begin
		if(aug_mat[43] == 0)
		begin
			nonInvertible_flag = 1'b1;
		end
		
		else
		begin
			temp = aug_mat[40];
			aug_mat[40]= aug_mat[30];
			aug_mat[30]=temp;
			
			
			temp = aug_mat[41];
			aug_mat[41]= aug_mat[31];
			aug_mat[31]=temp;
			
			
			temp = aug_mat[42];
			aug_mat[42]= aug_mat[32];
			aug_mat[32]=temp;
			
			
			temp = aug_mat[43];
			aug_mat[43]= aug_mat[33];
			aug_mat[33]=temp;
			
			
			temp = aug_mat[44];
			aug_mat[44]= aug_mat[34];
			aug_mat[34]=temp;
			
			
			temp = aug_mat[45];
			aug_mat[45]= aug_mat[35];
			aug_mat[35]=temp;
			
			
			temp = aug_mat[46];
			aug_mat[46]= aug_mat[36];
			aug_mat[36]=temp;
			
			
			temp = aug_mat[47];
			aug_mat[47]= aug_mat[37];
			aug_mat[37]=temp;
			
			
			temp = aug_mat[48];
			aug_mat[48]= aug_mat[38];
			aug_mat[38]=temp;
			
			
			temp = aug_mat[49];
			aug_mat[49]= aug_mat[39];
			aug_mat[39]=temp;						
		end
	end

//Elements under pivot in Column 4 are transformed to zero using Row transforaug_mation
	
	aug_mat[44] = aug_mat[33] * aug_mat[44] - aug_mat[43] * aug_mat[34];
	aug_mat[45] = aug_mat[33] * aug_mat[45] - aug_mat[43] * aug_mat[35];
	aug_mat[46] = aug_mat[33] * aug_mat[46] - aug_mat[43] * aug_mat[36];
	aug_mat[47] = aug_mat[33] * aug_mat[47] - aug_mat[43] * aug_mat[37];
	aug_mat[48] = aug_mat[33] * aug_mat[48] - aug_mat[43] * aug_mat[38];
	aug_mat[49] = aug_mat[33] * aug_mat[49] - aug_mat[43] * aug_mat[39];
	aug_mat[43] = aug_mat[33] * aug_mat[43] - aug_mat[43] * aug_mat[33];

//Checking pivot in column 5 if its zero then not invertible(there is no row to swap with)	
	if(aug_mat[44] == 0)
	begin
		nonInvertible_flag = 1'b1;
	end
//////////////////////// EF FORM CREATED TILL NOW ///////
//Now we need to create

//Making elements above pivot in column 5 zero using row transforaug_mation
	
	aug_mat[5] = aug_mat[44] * aug_mat[5] - aug_mat[4] * aug_mat[45];
	aug_mat[6] = aug_mat[44] * aug_mat[6] - aug_mat[4] * aug_mat[46];
	aug_mat[7] = aug_mat[44] * aug_mat[7] - aug_mat[4] * aug_mat[47];
	aug_mat[8] = aug_mat[44] * aug_mat[8] - aug_mat[4] * aug_mat[48];
	aug_mat[9] = aug_mat[44] * aug_mat[9] - aug_mat[4] * aug_mat[49];
	aug_mat[4] = aug_mat[44] * aug_mat[4] - aug_mat[4] * aug_mat[44];
	
	
	aug_mat[15] = aug_mat[44] * aug_mat[15] - aug_mat[14] * aug_mat[45];
	aug_mat[16] = aug_mat[44] * aug_mat[16] - aug_mat[14] * aug_mat[46];
	aug_mat[17] = aug_mat[44] * aug_mat[17] - aug_mat[14] * aug_mat[47];
	aug_mat[18] = aug_mat[44] * aug_mat[18] - aug_mat[14] * aug_mat[48];
	aug_mat[19] = aug_mat[44] * aug_mat[19] - aug_mat[14] * aug_mat[49];
	aug_mat[14] = aug_mat[44] * aug_mat[14] - aug_mat[14] * aug_mat[44];
	
	aug_mat[25] = aug_mat[44] * aug_mat[25] - aug_mat[24] * aug_mat[45];
	aug_mat[26] = aug_mat[44] * aug_mat[26] - aug_mat[24] * aug_mat[46];
	aug_mat[27] = aug_mat[44] * aug_mat[27] - aug_mat[24] * aug_mat[47];
	aug_mat[28] = aug_mat[44] * aug_mat[28] - aug_mat[24] * aug_mat[48];
	aug_mat[29] = aug_mat[44] * aug_mat[29] - aug_mat[24] * aug_mat[49];
	aug_mat[24] = aug_mat[44] * aug_mat[24] - aug_mat[24] * aug_mat[44];
	
	aug_mat[35] = aug_mat[44] * aug_mat[35] - aug_mat[34] * aug_mat[45];
	aug_mat[36] = aug_mat[44] * aug_mat[36] - aug_mat[34] * aug_mat[46];
	aug_mat[37] = aug_mat[44] * aug_mat[37] - aug_mat[34] * aug_mat[47];
	aug_mat[38] = aug_mat[44] * aug_mat[38] - aug_mat[34] * aug_mat[48];
	aug_mat[39] = aug_mat[44] * aug_mat[39] - aug_mat[34] * aug_mat[49];
	aug_mat[34] = aug_mat[44] * aug_mat[34] - aug_mat[34] * aug_mat[44];
	
//Making elements above pivot in column 4 zero using row transforaug_mation
	aug_mat[5] = aug_mat[33] * aug_mat[5] - aug_mat[3] * aug_mat[35];
	aug_mat[6] = aug_mat[33] * aug_mat[6] - aug_mat[3] * aug_mat[36];
	aug_mat[7] = aug_mat[33] * aug_mat[7] - aug_mat[3] * aug_mat[37];
	aug_mat[8] = aug_mat[33] * aug_mat[8] - aug_mat[3] * aug_mat[38];
	aug_mat[9] = aug_mat[33] * aug_mat[9] - aug_mat[3] * aug_mat[39];
	aug_mat[3] = aug_mat[33] * aug_mat[3] - aug_mat[3] * aug_mat[33];
	
	aug_mat[15] = aug_mat[33] * aug_mat[15] - aug_mat[13] * aug_mat[35];
	aug_mat[16] = aug_mat[33] * aug_mat[16] - aug_mat[13] * aug_mat[36];
	aug_mat[17] = aug_mat[33] * aug_mat[17] - aug_mat[13] * aug_mat[37];
	aug_mat[18] = aug_mat[33] * aug_mat[18] - aug_mat[13] * aug_mat[38];
	aug_mat[19] = aug_mat[33] * aug_mat[19] - aug_mat[13] * aug_mat[39];
	aug_mat[13] = aug_mat[33] * aug_mat[13] - aug_mat[13] * aug_mat[33];
	
	aug_mat[25] = aug_mat[33] * aug_mat[25] - aug_mat[23] * aug_mat[35];
	aug_mat[26] = aug_mat[33] * aug_mat[26] - aug_mat[23] * aug_mat[36];
	aug_mat[27] = aug_mat[33] * aug_mat[27] - aug_mat[23] * aug_mat[37];
	aug_mat[28] = aug_mat[33] * aug_mat[28] - aug_mat[23] * aug_mat[38];
	aug_mat[29] = aug_mat[33] * aug_mat[29] - aug_mat[23] * aug_mat[39];
	aug_mat[23] = aug_mat[33] * aug_mat[23] - aug_mat[23] * aug_mat[33];
		
//Making elements above pivot in column 3 zero using row transforaug_mation
	aug_mat[5] = aug_mat[22] * aug_mat[5] - aug_mat[2] * aug_mat[25];
	aug_mat[6] = aug_mat[22] * aug_mat[6] - aug_mat[2] * aug_mat[26];
	aug_mat[7] = aug_mat[22] * aug_mat[7] - aug_mat[2] * aug_mat[27];
	aug_mat[8] = aug_mat[22] * aug_mat[8] - aug_mat[2] * aug_mat[28];
	aug_mat[9] = aug_mat[22] * aug_mat[9] - aug_mat[2] * aug_mat[29];
	aug_mat[2] = aug_mat[22] * aug_mat[2] - aug_mat[2] * aug_mat[22];
	
	aug_mat[15] = aug_mat[22] * aug_mat[15] - aug_mat[12] * aug_mat[25];
	aug_mat[16] = aug_mat[22] * aug_mat[16] - aug_mat[12] * aug_mat[26];
	aug_mat[17] = aug_mat[22] * aug_mat[17] - aug_mat[12] * aug_mat[27];
	aug_mat[18] = aug_mat[22] * aug_mat[18] - aug_mat[12] * aug_mat[28];
	aug_mat[19] = aug_mat[22] * aug_mat[19] - aug_mat[12] * aug_mat[29];
	aug_mat[12] = aug_mat[22] * aug_mat[12] - aug_mat[12] * aug_mat[22];
	
//Making elements above pivot in column 2 zero using row transforaug_mation
	
	aug_mat[5] = aug_mat[11] * aug_mat[5] - aug_mat[1] * aug_mat[15];
	aug_mat[6] = aug_mat[11] * aug_mat[6] - aug_mat[1] * aug_mat[16];
	aug_mat[7] = aug_mat[11] * aug_mat[7] - aug_mat[1] * aug_mat[17];
	aug_mat[8] = aug_mat[11] * aug_mat[8] - aug_mat[1] * aug_mat[18];
	aug_mat[9] = aug_mat[11] * aug_mat[9] - aug_mat[1] * aug_mat[19];
	aug_mat[1] = aug_mat[11] * aug_mat[1] - aug_mat[1] * aug_mat[11];
	
end

endmodule
