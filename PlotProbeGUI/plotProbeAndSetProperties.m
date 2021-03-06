function plotProbeAndSetProperties(handles, iBlk)
global plotprobe

if ~exist('iBlk','var') || isempty(iBlk)
    iBlk=1;
end

y        = plotprobe.y{iBlk};
t        = plotprobe.t{iBlk};
tMarkInt = plotprobe.tMarkInt;
axScl    = plotprobe.axScl;
tMarkAmp = plotprobe.tMarkAmp;
ch       = plotprobe.dataTree.currElem.GetMeasList(iBlk);
SD       = plotprobe.dataTree.currElem.GetSDG();

set(handles.textTimeMarkersAmpUnits, 'string',plotprobe.tMarkUnits);
hData = plotProbe( y, t, SD, ch, [], axScl, tMarkInt, tMarkAmp );
showHiddenObjs(iBlk, hData);
plotprobe.handles.data = [plotprobe.handles.data; hData];
