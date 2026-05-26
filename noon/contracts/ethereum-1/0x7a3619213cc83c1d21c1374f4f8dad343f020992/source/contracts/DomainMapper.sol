// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IDomainMapper.sol";

/**
 * @title DomainMapper
 * @notice Maps between Hyperlane domain IDs and CCTP domain IDs
 * @dev Admin-managed mapping. Well-known CCTP domains:
 *      Ethereum=0, Avalanche=1, Optimism=2, Arbitrum=3, Base=6, Polygon=7
 */
contract DomainMapper is IDomainMapper, Ownable {
    mapping(uint32 => uint32) private _hyperlaneToCctp;
    mapping(uint32 => bool) private _hasMapping;

    event MappingSet(uint32 indexed hyperlaneDomain, uint32 cctpDomain);
    event MappingRemoved(uint32 indexed hyperlaneDomain);

    constructor() Ownable(msg.sender) {}

    function setMapping(uint32 hyperlaneDomain, uint32 cctpDomain) external onlyOwner {
        _hyperlaneToCctp[hyperlaneDomain] = cctpDomain;
        _hasMapping[hyperlaneDomain] = true;
        emit MappingSet(hyperlaneDomain, cctpDomain);
    }

    function removeMapping(uint32 hyperlaneDomain) external onlyOwner {
        delete _hyperlaneToCctp[hyperlaneDomain];
        _hasMapping[hyperlaneDomain] = false;
        emit MappingRemoved(hyperlaneDomain);
    }

    function hyperlaneToCctp(uint32 hyperlaneDomain) external view override returns (uint32) {
        require(_hasMapping[hyperlaneDomain], "No CCTP mapping for domain");
        return _hyperlaneToCctp[hyperlaneDomain];
    }

    function hasCctpMapping(uint32 hyperlaneDomain) external view override returns (bool) {
        return _hasMapping[hyperlaneDomain];
    }
}
