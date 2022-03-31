function zero_crossing_rate(frame)

    count = size(frame, 1)
    broadcast!(sign, frame, frame)
    broadcast!(abs, frame, frame)
    count_zero = sum(abs, frame) / 2
    return count_zero / count
end

function energy(frame)
    pow = frame.^2
    en = sum(pow) / size(frame, 1)
    return en
end
