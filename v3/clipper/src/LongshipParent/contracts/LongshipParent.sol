// SPDX-License-Identifier: Copyright 2022 Shipyard Software, Inc.
pragma solidity >=0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./Longship.sol";

interface SanctionsList {
    function isSanctioned(address addr) external view returns (bool);
}

contract LongshipParent is Ownable {

    using EnumerableSet for EnumerableSet.AddressSet;
    
    mapping(address => address) public markets;
    address addressChecker;
    uint256 minLongFeeBps;
    EnumerableSet.AddressSet marketKeys;


    event MarketLinked(address indexed token, address marketAddress);
    event GlobalParametersAdjusted(address addressChecker, uint256 longFee);

    constructor(address _checker, uint256 _longFee) {
        addressChecker = _checker;
        minLongFeeBps = _longFee;

        emit GlobalParametersAdjusted(addressChecker, minLongFeeBps);
    }

    function linkMarket(address theMarket, address theToken) external onlyOwner {
        require(markets[theToken]==address(0), "Market already exists");

        require(Longship(theMarket).PARENT() == address(this));
        markets[theToken] = theMarket;
        EnumerableSet.add(marketKeys, theToken);

        emit MarketLinked(theToken, markets[theToken]);
    }

    function unlinkMarketForToken(address theToken) external onlyOwner {
        require(markets[theToken]!=address(0), "Market does not exist");

        delete markets[theToken];

        emit MarketLinked(theToken, address(0));
    }

    function adjustVolatility(address theToken, uint256 newVolatility) external onlyOwner {
        require(markets[theToken]!=address(0), "Market does not exist");

        Longship(markets[theToken]).setVolatility(newVolatility);
    }

    function adjustAddressChecker(address _checker) external onlyOwner {
        require(_checker != address(0));
        addressChecker = _checker;
        
        emit GlobalParametersAdjusted(addressChecker, minLongFeeBps);
    }

    function adjustLongFee(uint256 newFee) external onlyOwner {
        minLongFeeBps = newFee;

        emit GlobalParametersAdjusted(addressChecker, minLongFeeBps);
    }

    function checkAddress(address toCheck) external view returns (bool) {
        return !SanctionsList(addressChecker).isSanctioned(toCheck);
    }

    function getMinLongFeeBps() external view returns (uint256){
        return minLongFeeBps;
    }

    function getMarkets() external view returns (address[] memory, address[] memory){
        address[] memory returnTokens = new address[](EnumerableSet.length(marketKeys));
        address[] memory returnMarkets = new address[](EnumerableSet.length(marketKeys));
        for (uint i=0; i<EnumerableSet.length(marketKeys); i++){
            returnTokens[i] = EnumerableSet.at(marketKeys, i);
            returnMarkets[i] = markets[EnumerableSet.at(marketKeys, i)]; 
        }

        return (returnTokens, returnMarkets);
    }

}
