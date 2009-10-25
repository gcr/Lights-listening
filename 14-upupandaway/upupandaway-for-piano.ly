\version "2.12.1"

\include "upupandaway.ly"

\header {
  title         = "Up Up And Away"
  tagline       = \markup { 
    All music copyright ©2009 by Lights Poxleitner.
    Engraving by GNU Lilypond -- www.lilypond.org 
  }
  composer      = "Lights"
  opus          = "The Listening"
  piece         = \markup { \italic { Dolce } }
} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score { <<
  \new Staff = "lyrics" <<
    \time 4/4
    \key aes \major
    \new Voice = "lights"  {
      \UpUpLyricsNotes
    }
    \new Lyrics \lyricsto "lights" {
      \autoBeamOff
      \UpUpText
    }
    \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
      \new Staff = "upper" {
        \key aes \major
        \clef treble
        \UpUpPianoRH
      }
      \new Staff = "lower" {
        \key aes \major
        \clef bass
        \UpUpPianoLH
      }
    >>
  >>
>> }

