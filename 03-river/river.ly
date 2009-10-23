\version "2.12.1"

%{

          888      8888888 .d8888b.  888    888 88888888888 .d8888b.
          888        888  d88P  Y88b 888    888     888    d88P  Y88b
          888        888  888    888 888    888     888    Y88b.
          888        888  888        8888888888     888     "Y888b.
          888        888  888  88888 888    888     888        "Y88b.
          888        888  888    888 888    888     888          "888
          888        888  Y88b  d88P 888    888     888    Y88b  d88P
          88888888 8888888 "Y8888P88 888    888     888     "Y8888P"

                                     River
                                 The Listening

                   Composed and arranged by Lights Poxleitner
                  Arranged for vocals and piano just for you!

%}

\header {
  title         = "River"
  tagline       = \markup { 
    All music copyright ©2009 by Lights Poxleitner.
    Engraving by GNU Lilypond -- www.lilypond.org 
  }
  composer      = "Lights"
  %arranger      = "gcr"
  opus          = "The Listening"
  %instrument    = "Piano"
}
#(set-default-paper-size "letter")

% Lyrics graciously provided by
% http://www.iamlights.com/discography/album/listening/river
RiverChorustext = \lyricmode {
  Take ma, ri -- ver!
  Car -- ry me far!
  Lead me, ri -- ver
  like a mo -- ther % I'm tempted to make a 'your mom' joke, but I hate those.
  Take me, ri -- ver;
  Lead me to some o -- ther un -- known.
  Put me in the un -- der -- tow.
}
RiverText = \lyricmode {
  %{ 
    I've got a lov -- e -- ly bunch of co -- co -- nuts,
    There they are a- stan -- ding in a row!
    Big ones, small ones, some as big as your head...
  %} 
  % ...no, that doesn't seem right, maybe I should listen to it more closely.

  Out ac -- cross cit -- ties, I see 
  buil -- dings burn in -- to pi -- les
  and watch the world in won -- der as 
  moun -- tains turn in -- to ti -- les

  and trees lo -- sing their leaves and our 
  fa -- ces be -- com -- ing ti -- red.
  I wish I could dis -- cov -- er 
  some -- thing that does -- n't ex -- pi -- re

  Come and stum -- ble me!

  \RiverChorustext

  Such are the things that make a 
  king -- dom rum -- ble and shat -- ter;
  the same dy -- nam -- ic that
  a -- no -- ther day would nev -- ver mat -- ter.
  It real -- ly just depends on who's 
  giv -- ving and who's re -- ceiv -- ing,
  and things that don't make sense are 
  al -- ways a lit -- tle de -- ceiv -- ing.

  Come and hum -- ble me!

  \RiverChorustext

  I wan -- na go where you're go -- ing;
  a fol -- low -- er fol -- low -- ing.
  Chan -- ging, but ne -- ver changed.
  Claim -- ing, but ne -- ver claimed.
  % In that part, she sings 'the never' but all sources say 'but never'. Which
  % one is it? ONLY LIGHTS KNOWS, MUAHAHAHA. This is why this is unnoficial
  % music, yo.

  \RiverChorustext


}

%%%%%%%%%%%%%%%%%%%
\parallelMusic #'(RiverIntroRH RiverIntroLH) {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RiverLyricNotes = \relative c'' {
  c
}

RiverPianoRH = {
  \relative c' {
    \RiverIntroRH
  }
}
RiverPianoLH = {
  \relative c {
    \RiverIntroLH
  }
}

