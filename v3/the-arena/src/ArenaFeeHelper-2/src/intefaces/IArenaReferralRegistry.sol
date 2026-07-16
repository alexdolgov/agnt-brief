// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


interface IArenaReferralRegistry {
    function setReferrerWithAdmin(address _referrer, address _referee) external;
    function setReferrer(address _referrer) external;
    function getReferrer(address _referee) external view returns (address);
}

