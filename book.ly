\version "2.12.1"

\include "03-river/river.ly"

\book {
  \bookpart {
    \header {
      title = "River"
    }
    \score { <<
      \new Staff = "lyrics" <<
        \time 8/8
        \key c \major
        \new Voice = "lights"  {
          \RiverLyricNotes
        }
        \new Lyrics \lyricsto "lights" {
          \autoBeamOff
          \RiverText
        }
        \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
          \new Staff = "upper" {
            \key a \major
            \clef treble
            \RiverPianoRH
          }
          \new Staff = "lower" {
            \key a \major
            \clef bass
            \RiverPianoLH
          }
        >>
      >>
    >> }
  }
}
