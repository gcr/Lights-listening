\include "river.ly"

%%%%%%%%%%%%%%%%%%%%%%%
% This file just has the structure and layout. Check out the actual notes
% in river.ly

\header {
  title         = "River"
  composer      = "Composed by Lights"
  arranger      = "Arranged for piano by gcr"
  opus          = \markup { From \italic { The Listening } }
  piece         = \markup { \italic { Dolce } }
  tagline       = \markup { \column { \center-align {
    \line { All music copyright ©2009 by Lights Poxleitner. No copyright
      infringement is intended. }
    \line { This document is completely unofficial and is in no way endorsed by
      Lights. }
    \line { Engraving by GNU Lilypond -- www.lilypond.org }
  } } }
}
#(set-default-paper-size "letter")

%%%%%%%%%%%%%%%%%%%%%%%%
\score { <<
  \new Staff = "lyrics" <<
    % uncomment below to add bar numbers at every measure.
    %\override Score.BarNumber #'break-visibility = #end-of-line-invisible

    % Each measure should consist of eight 8th notes, hence 8/8
    % BZZT! WRONG. http://www.fretfeed.com/the-complete-guide-to-rhythm-and-time-signatures/
    % 8/8 implies that a dotted quarter note gets the beat. This doesn't happen
    % for this song.
    \time 4/4
    %\tempo 4. = 60

    \key c \major
    \new Voice = "lights"  {
      \autoBeamOff
      \RiverLyricNotes
    }
    \new Lyrics \lyricsto "lights" {
      \RiverText
    }

    \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
      \new Staff = "upper" {
        \key c \major
        \clef treble
        \RiverPianoRH
      }
      \new Staff = "lower" {
        \key c \major
        \clef bass
        \RiverPianoLH
      }
    >>
  >>
>> }
