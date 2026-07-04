// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.5.12;

interface ChainLogAbstract {
    function setVersion(string calldata) external;
    function setIPFS(string calldata) external;
    function setSha256sum(string calldata) external;
    function getAddress(bytes32) external view returns (address);
    function setAddress(bytes32, address) external;
    function removeAddress(bytes32) external;
}
