// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract TokenConfigWrapper {
    enum PriceSource {
        chainlink,
        pairOracle
    }

    struct TokenConfig {
        address rToken;
        address underlying;
        bytes32 symbolHash;
        uint256 baseUnit;
        PriceSource priceSource;
    }

    mapping(address => TokenConfig) public getTokenConfigByRToken;
    mapping(bytes32 => address) public getRTokenBySymbolHash;
    mapping(address => address) public getRTokenByUnderlying;

    function setTokenConfigInternal(
        address _rToken,
        address _underlying,
        string memory _symbol,
        uint256 _decimals,
        PriceSource _priceSource
    ) internal {
        require(getRTokenByUnderlying[_underlying] == address(0), "RToken & underlying existed");

        bytes32 symbolHash = keccak256(abi.encodePacked(_symbol));
        TokenConfig storage _newToken = getTokenConfigByRToken[_rToken];
        _newToken.rToken = _rToken;
        _newToken.underlying = _underlying;
        _newToken.baseUnit = 10**_decimals;
        _newToken.symbolHash = symbolHash;
        _newToken.priceSource = _priceSource;

        getRTokenByUnderlying[_newToken.underlying] = _rToken;
        getRTokenBySymbolHash[_newToken.symbolHash] = _rToken;
    }

    function getTokenConfigBySymbolHash(bytes32 _symbolHash) internal view returns (TokenConfig memory) {
        address rToken = getRTokenBySymbolHash[_symbolHash];
        require(rToken != address(0), "token config not found");
        return getTokenConfigByRToken[rToken];
    }

    function getTokenConfigBySymbol(string memory symbol) external view returns (TokenConfig memory) {
        bytes32 symbolHash = keccak256(abi.encodePacked(symbol));
        return getTokenConfigBySymbolHash(symbolHash);
    }
}
