\version "2.18.2"
\header {
  title = "From This Moment On (Chorus)"
  composer = "Shania Twain"
  arranger = "arranged by Ramana Kumar"
  copyright = "Creative Commons Attribution-ShareAlike 4.0"
}

VlnI =
\relative c' {
  \clef treble
  \key g \major
  \partial 16 d16 |
  d8 g16 g ~ g8 a16 a ~ a8 b16 b ~ b8 d, |
  e2. r8 g8 |
}

VlnII =
\relative c' {
  \clef treble
  \key g \major
  \partial 16 r16 |
  r2 r8 r16 d16 ~ d8 r8 |
  d4 d d d |
}

Vla =
\relative c' {
  \clef alto
  \key g \major
  \partial 16 r16 |
  b2 r |
  g4 g g g |
}

Vlc =
\relative c {
  \clef bass
  \key g \major
  \partial 16 r16 |
  g2. a4 |
  c1 |
}

#(define output-suffix "score")
\book{
  \score {
    \new StaffGroup <<
      \new Staff = "vln1" {
        \set Staff.instrumentName = #"Violin I."
        \VlnI
      }
      \new Staff = "vln2" {
        \set Staff.instrumentName = #"Violin II."
        \VlnII
      }
      \new Staff = "vla" {
        \set Staff.instrumentName = #"Viola"
        \Vla
      }
      \new Staff = "vlc" {
        \set Staff.instrumentName = #"Cello"
        \Vlc
      }
    >>
  }
}

#(define output-suffix "vln1")
\book {
  \score {
    \VlnI
  }
}

#(define output-suffix "vln2")
\book {
  \paper {
    ragged-last-bottom = ##f
  }
  \score {
    \VlnII
  }
}

#(define output-suffix "vla")
\book {
  \paper {
    ragged-last-bottom = ##f
  }
  \score {
    \Vla
  }
}

#(define output-suffix "vlc")
\book {
  \score {
    \Vlc
  }
}
