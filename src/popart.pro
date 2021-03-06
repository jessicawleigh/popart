######################################################################
# Automatically generated by qmake (2.01a) Sat Mar 17 11:24:10 2012
######################################################################

TEMPLATE = app
TARGET = popart
DEPENDPATH += . gui networks popgen seqio tree 
INCLUDEPATH += . networks seqio popgen tree gui 
DEFINES += NET_QT
CONFIG += qt warn_on release
QT += svg

# default directory for lp_solve headers
unix:!macx{
  PRELPSOLVEDIR=/usr/include/lpsolve
  PREMARBLEDIR=/usr/include/marble

  exists($$PRELPSOLVEDIR/lp_lib.h){
  DEPENDPATH += $$PRELPSOLVEDIR
  INCLUDEPATH += $$PRELPSOLVEDIR
  } else:exists($$LPSOLVEDIR/lp_lib.h ) {
  DEPENDPATH += $$LPSOLVEDIR
  INCLUDEPATH += $$LPSOLVEDIR
      } else {
  error( "lpsolve headers not found!" )
  }

  exists($$PREMARBLEDIR/MarbleWidget.h){
  DEPENDPATH += $$PREMARBLEDIR
  INCLUDEPATH += $$PREMARBLEDIR
  } else:exists($$MARBLEDIR/MarbleWidget.h ) {
  DEPENDPATH += $$MARBLEDIR
  INCLUDEPATH += $$MARBLEDIR
      } else {
  error( "Marble headers not found!" )
  }
  
  LIBS += -llpsolve55 -lmarblewidget
  #QMAKE_POST_LINK = build_help.sh
}

macx{
  ICON = popart.icns
  INCLUDEPATH += /usr/local/include/lpsolve /usr/local/include/marble
  LIBS += -llpsolve55 -lmarblewidget

  RC_FILE = popart.rc
  QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.6
  QMAKE_MAC_SDK = macosx10.6
}

win32{
  INCLUDEPATH += "c:/lpsolve55" "c:/marble/marble"
  LIBS += "c:/lpsolve55/lpsolve55.lib" "c:/marble/libmarblewidget.dll"
  CONFIG += exceptions rtti #static static-libgcc
  RC_FILE = popart.rc

}

# Input
HEADERS += gui/AlignmentDelegate.h \
           gui/AlignmentModel.h \
           gui/AlignmentView.h \
           gui/Assistant.h \
           gui/BarchartItem.h \
           gui/BorderRectItem.h \
           gui/CitationDialog.h \
           gui/ColourDialog.h \
           gui/ColourTheme.h \
           gui/EdgeItem.h \
           gui/GroupItemDialog.h \
           gui/HapnetWindow.h \
           gui/HapAppError.h \
           gui/HapLayer.h \
           gui/HapLocation.h \
           gui/LabelItem.h \
           gui/LegendItem.h \
           gui/MapLegendDialog.h \
           gui/MapLegendWidget.h \
           gui/MapView.h \
           gui/MonospaceMessageBox.h \
           gui/MoveCommand.h \
           gui/NetworkItem.h \
           gui/NetworkLayout.h \
           gui/NetworkModel.h \
           gui/NetworkScene.h \
           gui/NetworkView.h \
           gui/SelectionRange.h \
           gui/TaxBoxItem.h \
           gui/TraitItem.h \
           gui/TraitModel.h \
           gui/TraitView.h \
           gui/VertexItem.h \
           gui/XPM.h \
           networks/AbstractMSN.h \
           networks/AncestralSeqNet.h \
           networks/ConcreteHapNet.h \
           networks/Edge.h \
           networks/Graph.h \
           networks/HapNet.h \
           networks/IntNJ.h \
           networks/MinSpanNet.h \
           networks/MedJoinNet.h \
           networks/NetworkError.h \
           networks/Vertex.h \
           networks/ParsimonyNet.h \
           networks/TCS.h \
           networks/TightSpanWalker.h \
           popgen/Statistics.h \
           popgen/StatsError.h \
           seqio/GeneticCode.h \
           seqio/GeoTrait.h \
           seqio/NexusParser.h \
           seqio/ParserTools.h \
           seqio/PhylipParser.h \
           seqio/SeqParseError.h \
           seqio/SeqParser.h \
           seqio/Sequence.h \
           seqio/SequenceError.h \
           seqio/TableParser.h \
           seqio/Trait.h \
           tree/ParsimonyNode.h \
           tree/ParsimonyTree.h \
           tree/SeqNode.h \
           tree/SeqTree.h \
           tree/Tree.h \
           tree/TreeError.h \
           tree/TreeNode.h 
SOURCES += gui/AlignmentDelegate.cpp \
           gui/AlignmentModel.cpp \
           gui/AlignmentView.cpp \
           gui/Assistant.cpp \
           gui/BarchartItem.cpp \
           gui/BorderRectItem.cpp \
           gui/CitationDialog.cpp \
           gui/ColourDialog.cpp \
           gui/ColourTheme.cpp \
           gui/EdgeItem.cpp \
           gui/GroupItemDialog.cpp \
           gui/HapnetWindow.cpp \
           gui/HapApp.cpp \
           gui/HapAppError.cpp \
           gui/HapLayer.cpp \
           gui/HapLocation.cpp \
           gui/LabelItem.cpp \
           gui/LegendItem.cpp \
           gui/MapLegendDialog.cpp \
           gui/MapLegendWidget.cpp \
           gui/MapView.cpp \
           gui/MonospaceMessageBox.cpp \
           gui/MoveCommand.cpp \
           gui/NetworkItem.cpp \
           gui/NetworkLayout.cpp \
           gui/NetworkModel.cpp \
           gui/NetworkScene.cpp \
           gui/NetworkView.cpp \
           gui/SelectionRange.cpp \
           gui/TaxBoxItem.cpp \
           gui/TraitItem.cpp \
           gui/TraitModel.cpp \
           gui/TraitView.cpp \
           gui/VertexItem.cpp \
           networks/AbstractMSN.cpp \
           networks/AncestralSeqNet.cpp \
           networks/ConcreteHapNet.cpp \
           networks/Edge.cpp \
           networks/Graph.cpp \
           networks/HapNet.cpp \
           networks/IntNJ.cpp \
           networks/MinSpanNet.cpp \
           networks/MedJoinNet.cpp \
           networks/NetworkError.cpp \
           networks/Vertex.cpp \
           networks/ParsimonyNet.cpp \
           networks/TCS.cpp \
           popgen/Statistics.cpp \
           popgen/StatsError.cpp \
           networks/TightSpanWalker.cpp \
           seqio/GeneticCode.cpp \
           seqio/GeoTrait.cpp \
           seqio/NexusParser.cpp \
           seqio/ParserTools.cpp \
           seqio/PhylipParser.cpp \
           seqio/SeqParseError.cpp \
           seqio/SeqParser.cpp \
           seqio/Sequence.cpp \
           seqio/SequenceError.cpp \
           seqio/TableParser.cpp \
           seqio/Trait.cpp \
           tree/ParsimonyNode.cpp \
           tree/ParsimonyTree.cpp \
           tree/SeqNode.cpp \
           tree/SeqTree.cpp \
           tree/Tree.cpp \
           tree/TreeError.cpp \
           tree/TreeNode.cpp
 
