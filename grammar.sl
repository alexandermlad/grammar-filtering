(set-logic SLIA)

(synth-fun f ((arg String)) String
    ((Start String (ntString))
    (ntString String (
        arg " " "-" "(" ")"
        (str.++ ntString ntString)
        (str.replace ntString ntString ntString)
        (str.at ntString ntInt)
        (int.to.str ntInt)
        (str.substr ntString ntInt ntInt)))
    (ntInt Int (
        0 1 2 3 4 5
        (+ ntInt ntInt)
        (- ntInt ntInt)
        (str.len ntString)
        (str.to.int ntString)
        (str.indexof ntString ntString ntInt)))))

(declare-var arg String)
(check-synth)
