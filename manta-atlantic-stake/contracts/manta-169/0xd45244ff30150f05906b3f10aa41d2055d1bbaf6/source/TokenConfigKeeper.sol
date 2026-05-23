// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./interfaces/ITimelock.sol";
import "../access/Governable.sol";
import "../core/interfaces/IVaultPriceFeedV3.sol";

contract TokenConfigKeeper is Governable {
    address public timelock;
    address public vaultPriceFeed;

    mapping(address => bool) public isHandler;

    constructor(address _timelock, address _vaultPriceFeed) public {
        timelock = _timelock;
        vaultPriceFeed = _vaultPriceFeed;
    }

    modifier onlyHandler() {
        require(isHandler[msg.sender], "TokenConfigKeeper: ONLY HANDLER");
        _;
    }

    function setHandler(address _handler, bool _isActive) external onlyGov {
        isHandler[_handler] = _isActive;
    }

    function setTokenConfig(
        address _vault,
        address _token,
        uint256 _tokenWeight,
        uint256 _minProfitBps,
        uint256 _maxUsdgAmount,
        uint256 _bufferAmount,
        uint256 _usdgAmount
    ) external onlyHandler {
        IVaultPriceFeedV3(vaultPriceFeed).setIsPriceEnabled(true);
        ITimelock(timelock).setTokenConfig(
            _vault,
            _token,
            _tokenWeight,
            _minProfitBps,
            _maxUsdgAmount,
            _bufferAmount,
            _usdgAmount
        );
        IVaultPriceFeedV3(vaultPriceFeed).setIsPriceEnabled(false);
    }
}
