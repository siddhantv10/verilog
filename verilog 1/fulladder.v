module fulladder(s,cout, a, b, cin);

input a,b, cin;
output s, cout;

wire s1, c1, c2;

xor G1(s1, a,b), G2(s, s1, c), G3(cout, c1, c2);
and G4(c1, a, b), G5(c2, s1,c);

endmodule

