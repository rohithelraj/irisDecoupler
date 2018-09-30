function [all_blobs,pupil] = findPupil( whole_eye )
%FINDPUPIL detects the pupil.
%   Argument: whole_eye -> the whole eye sample, in RGB.
%   Return: all_blobs-> blob containing pupil.
%           pupil -> the monochrome pupil mask.
grey = imono(whole_eye);
pupil = grey > 0;
all_blobs = iblobs(pupil,'boundary');



