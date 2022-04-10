module test (
    input a,
    input b,
    input c,
    input d,
    input e,

    output s1,
    output s2,
    output s3,
    output s4,
    output s5,
    output s6,
    output s7
);

assign s1 = (a&c&(~d)&(~e)) |(a&b&(~c)&(~e)) | ((~a) &(~b)&d&e) | ((~a)&b&c&(~d)) | ((~a)&b&d&(~e)) | ((~b)&c&(~e)&d) | ((~b)&c&(~d)&e) | ((~a)&b&e&(~c)) | (a&(~b)&(~c)&d) | (a&(~c)&(~d)&e) |((~a)&(~b)&(~c)&(~d)&(~e)) |(a&b&c&d&e);


assign s2 = (e | d | c | b | a);

assign s3 = ((~a)&(~b)&(~c)) | ((~a)&(~b)&(~d)) | ((~a)&(~c)&(~d)) | ((~b)&(~c)&(~d)) | ((~a)&(~b)&(~e)) | ((~a)&(~c)&(~e)) | ((~b)&(~c)&(~e)) | ((~a)&(~d)&(~e)) | ((~b)&(~d)&(~e)) | ((~c)&(~d)&(~e)) | (b&c&d&e) | (a&c&d&e) | (a&b&d&e) | (a&b&c&e) | (a&b&c&d);


assign s4 = ((~a)&(~c)&d&e) | ((~a)&(~b)&c&d) | (a&(~b)&(~c)&d) | ((~a)&b&d&(~e)) | (a&b&(~c)&(~e)) | ((~a)&c&(~d)&e) | (a&(~b)&(~d)&e) | (b&(~d)&c&(~e)) | (a&(~b)&c&(~e)) | (b&(~c)&e&(~d)) | ((~a)& (~b)& (~c)& (~d)& (~e)) + (a&b&c&d&e);

assign s5 = ((~a)&(~b)&c&d&e) | ((~a)&b&(~c)&d&e) |((~a)&b&c&(~d)&e) |((~a)&b&c&d&(~e)) | (a&(~b)&(~c)&d&e) |(a&(~b)&c&(~d)&e) | (a&(~b)&c&d&(~e)) | (a&b&(~c)&e&(~d)) |(a&b&(~c)&d&(~e)) |(a&b&c&(~d)&(~e)) | (a&b&c&d&e);


assign s6 = ((~a)&(~b)&(~c)&(~d)) | ((~a)&(~b)&(~c)&(~e)) | ((~a)&(~b)&(~d)&(~e)) | ((~a)&(~c)&(~d)&(~e)) | ((~c)&(~b)&(~d)&(~e)) | (a&b&c&d&e);

assign s7 = ((~a)&(~b)) | ((~a)&(~c)) | ((~b)&(~c)) | ((~a)&(~d)) | ((~b)&(~d)) | ((~c)&(~d)) |((~a)&(~e)) |((~b)&(~e)) | ((~c)&(~e)) | ((~d)&(~e));

    
endmodule