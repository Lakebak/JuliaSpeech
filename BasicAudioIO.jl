using WAV

function read_audio(path::String, subrange=:, format="double"::String)

    signal, sr = wavread(path, subrange, format)

    return signal, sr
end

#=
function to_mono()
    
end
=#