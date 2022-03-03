(defrule Ask
    =>
    (printout t crlf "apakah anda ingin memeriksa penyakit saraf yang anda alami? (Y/N)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Y)
            then (printout t crlf "sebutkan gejala yang anda alami" crlf)
        )
        (if (eq ?answer N)
            then (printout t crlf "oke terimakasih" crlf)
        )
)

(defrule alzheimer
    (pernyakit_is alzheimer)
    =>
    (printout t "dari gejala yang anda input, kemungkinan anda mengidap Alzheimer" crlf)
)

(defrule is_it_alzheimer
    (gejala sulit_berkomunikasi)
    (gejala depresi)
    (gejala delusi)
    (gejala sering_lupa)
    (gejala sering_linglung)
    (gejala mudah_marah)
    =>
    (assert (pernyakit_is alzheimer))
)

(defrule stroke
    (pernyakit_is stroke)
    =>
    (printout t "dari gejala yang anda input, kemungkinan anda mengidap Stroke" crlf)
)

(defrule is_it_stroke
    (gejala ucapan_tidak_jelas)
    (gejala tidak_bisa_tersenyum)
    (gejala mati_rasa)
    (gejala mata_terkulai)
    =>
    (assert (pernyakit_is stroke))
)

(defrule bells_palsy
    (pernyakit_is bells_palsy)
    =>
    (printout t "dari gejala yang anda input, kemungkinan anda mengidap Bells Palsy" crlf)
)

(defrule is_it_bells_palsy
    (gejala lumpuh_pada_wajah)
    (gejala mata_berair)
    (gejala ngeces)
    (gejala sulit_tersenyum)
    =>
    (assert (penyakit_is bells_palsy))
)

(defrule neuritis_optik
    (pernyakit_is neuritis_optik)
    =>
    (printout t "dari gejala yang anda input, kemungkinan anda mengidap Neuritis Optik" crlf)
)

(defrule is_it_neuritis_optik
    (gejala pengelihatan_buram)
    (gejala pandangan_sempit)
    (gejala sebagian_warna_terlihat_redup)
    (gejala nyeri_mata)
    =>
    (assert (penyakit_is neuritis_optik))
)

(defrule multiple_sclerosis
    (penyakit_is multiple_sclerosis)
    =>
    (printout t "dari gejala yang anda input, kemungkinan anda mengidap Multiple Sclerosis" crlf)
)

(defrule is_it_multiple_sclerosis
    (gejala kelelahan)
    (gejala kesemutan)
    (gejala mati_rasa)
    (gejala pengelihatan_kabur)
    (gejala otot_kaku)
    =>
    (assert (penyakit_is multiple_sclerosis))
)

(defrule epilepsi
    (penyakit_is epilepsi)
    =>
    (printout t "dari gejala yang anda input, kemungkinan anda mengidap Epilepsi" crlf)
)

(defrule is_it_epilepsi
    (gejala kejang)
    (gejala hilang_kesadaran)
    (gejala kebingungan)
    =>
    (assert (penyakit_is epilepsi))
)