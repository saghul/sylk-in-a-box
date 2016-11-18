'use strict';

const defaultDomain = 'example.com';

const configOptions = {
    defaultDomain           : defaultDomain,
    enrollmentDomain        : defaultDomain,
    publicUrl               : 'https://example.com',
    enrollmentUrl           : 'https://example.com',
    defaultConferenceDomain : `videoconference.${defaultDomain}`,
    defaultGuestDomain      : `guest.${defaultDomain}`,
    wsServer                : `wss://${window.location.host}/ws`,
    iceServers              : [{urls: 'stun:stun.l.google.com:19302'}]
};


module.exports = configOptions;
