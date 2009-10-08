\version "2.12.1"

\header {
  title    = "Pretend"
  composer = "Lights"
  % Comfortable and honest
}

% Thanks to http://lsr.dsi.unimi.it/LSR/Item?id=328
triplet = #(define-music-function (parser location music) (ly:music?)
  #{ \times 2/3 $music #})


chorustext = \lyricmode {
  It would be nice
  to start o- ver a- gain!
  Be- fore we were men.
  I'd give; I'd bend.
  Let's play pre- tend.
}

% Thanks to http://www.songlyrics.com/lights/pretend-lyrics/
text = \lyricmode {
  Once in a while, I act like a child
  to feel like a kid a- gain.

  It gets like a pri- son in
  the bo- dy I'm liv- ing in.

  'Cause ev- ery- one's watch- ing
  and quick to start talk- ing.
  I'm lo- sing my in- no- cence.

% Wish I were a lit- tle boy;
% be more than a bro- ken toy.
  Wish I were a lit- tle girl
  with- out the weight of the world.

  \chorustext

  Re- mem- ber the times
  we had so- da for wine
  and we got by on gra- ti- tude?

  The worse they could do to you
  was check your at- ti- tude.

  Yeah, when fights were for fun?
  We had wa- ter in guns?
  And a place we could call our own?

  How we lost sight of home;
  I guess I'l ne- ver know

  \chorustext
  And when it's the end,
  our lives will make sense.
  We'll love, we'll bend;
  let's play pre- tend.

  It's not go- ing to_be long
  be- fore we're all gone
  with no- thing to show for them.

  Stop ta- king lives; come on,
  let's all grow up a- gain.
}

lyricsSentenceA = \relative c'' {
  e8 cis b |
  cis4 a8 e' cis b | 
  cis4 a8 e' cis b | 
  \triplet {b a fis} r2 | r2 r8 cis'8 |
}

lyricsSentenceB = {
  fis8 fis fis
  \triplet {fis e cis} cis
  e8 e e
  \triplet {e8 cis b ~} b8 |
}

lyricsSentenceC = \relative c'' {
  r2.
  r4 a8 e' cis b |
  b16 cis8. a8
  e' cis b |
  b16 cis8. a8 
  e'8 cis b ~ |
  b \triplet {b a fis ~}  fis4. |
  r2 r8 cis8 |
}

lyricsSentenceD = {
  fis8 fis fis
  \triplet {fis e cis8} cis8 |
  e8 e e \triplet {e cis cis ~ } cis ~ |
  b2.
  r4. a8 b a |
}

lyricChorusA = \relative c''' {
  a2 e8 e |
  b'4 gis e
  cis2.%4 ~ \triplet {c8 }
}

lyricsMelody = \relative c'' {
  r2. r2. r2. r2.
  r2. r2. r2. r4.
  \lyricsSentenceA
  \lyricsSentenceB
  \lyricsSentenceC
  \lyricsSentenceD
  \lyricChorusA
}

%%%%%%%%%%%%%%%%%%%
introRHa = \relative c' {
  << {
    cis4.\arpeggio(
    cis)
    e\arpeggio(
    e) |
    cis e b e
  } \\ {
  e2.\arpeggio 
  gis\arpeggio
  ais,
  } >>
}
introLHa = \relative c' {
  a2.\arpeggio
  <cis, ais'>\arpeggio
  fis,
  <e gis>
}

introRHb = \relative c' {
  << {
    cis4.(
    cis)
    e(
    e) |
  } \\ {
  e2.
  gis
  } >>
  cis,2.
  b
}
introLHb = \relative c {
  a2.
  <cis ais'>
  fis
  <e gis>
}

melodyRHa = \relative c' {
  <cis e>2.
  <b e>2.
  cis2. ~ | cis4.  cis4. |
  fis2. | e2. |
  b4.
  cis
  b2.
}
melodyLHa = \relative c {
  r2. r2. |
  fis2. ~ | fis4.  e4. |
  b2. | cis2. |
  gis4.
  a
  gis2.
}

melodyRHb = \relative c' {
  r4.
  <cis e> |
  <b e>
  <b e>
  cis cis cis cis |
  fis fis e e
  b cis b2.
}
melodyLHb = \relative c {
  a2. |
  r
  fis'4. fis fis e |
  b' b a a
  gis a gis2.
}

chorusRHa = \relative c'' {
  a4. <cis, e>
  <gis cis e> <gis' cis,>
  <a, cis> <a cis>
  <a fis'> <a fis'>
}
chorusLHa = \relative c {
  a2. cis fis, d
}

pianoRH = {
  \introRHa
  \introRHb
  \melodyRHa
  \melodyRHb
  \chorusRHa
}
pianoLH = {
  \introLHa
  \introLHb
  \melodyLHa
  \melodyLHb
  \chorusLHa
}

%%%%%%%%%%%%%%%%%%%%%%%%
\new Staff = "lyrics" <<
  \time 6/8
  \key a \major
  \new Voice = "lights" {
    \lyricsMelody
  }
  \new Lyrics \lyricsto "lights" {
    \autoBeamOff
    \text
  }

  \new PianoStaff  = "piano" \with { connectArpeggios = ##t } <<
    \new Staff = "upper" {
      \key a \major
      \clef treble
      \pianoRH
    }
    \new Staff = "lower" {
      \key a \major
      \clef bass
      \pianoLH
    }
  >>
>>

