module Walsh

using Hadamard

export walsh

"""
    walsh(n)

return ``n\\times n`` Walsh matrix by bit-reversal permutation of Hadamard matrix.

!!! note
    If `n` is not a power of 2, an error occurs.
"""
function walsh(n)
    m = Int(round(log2(n))) + 1 # number of bits to represent the index
    e = sizeof(Int)*8 - m       # number of extra bits
    i = 0:n-1                   # Hadamard index
    j = bitreverse.(i) .>> e    # bit reversing of the binary index
    j = j .⊻ (j .>> 1)          # binary sequency index

    return hadamard(n)[j.+1,:]
end

end
