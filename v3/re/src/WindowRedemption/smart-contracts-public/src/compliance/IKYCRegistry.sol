// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

interface IKYCRegistry {
    function isKYCApproved(address user) external view returns (bool);
}
