/*
 *  
 *  Copyright(C) 2018 Gerald Coe, Devantech Ltd <gerry@devantech.co.uk>
 * 
 *  Permission to use, copy, modify, and/or distribute this software for any purpose with or
 *  without fee is hereby granted, provided that the above copyright notice and 
 *  this permission notice appear in all copies.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO
 *  THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. 
 *  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL 
 *  DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN
 *  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN 
 *  CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 * 
 */


// Blink an LED provided an input clock
/* module */
module top (clk, led1, led2, led3, led4, led5, led6, led7, led8, lcol1, lcol2, lcol3, lcol4 );
    /* I/O */
    input clk;
    output led1;
    output led2;
    output led3;
    output led4;
    output led5;
    output led6;
    output led7;
    output led8;
    output lcol1;
    output lcol2;
    output lcol3;
    output lcol4;

    /* Counter register */
    reg [31:0] counter = 32'b0;

    /* LED drivers - counter is inverted for display because leds are active low */
    assign {led8, led7, led6, led5, led4, led3, led2, led1} = counter[26:19] ^ 8'hff; 
    assign {lcol4, lcol3, lcol2, lcol1} = 4'b1110;


    /* Count up on every edge of the incoming 12MHz clk */
    always @ (posedge clk) begin
        counter <= counter + 1;
    end

endmodule
