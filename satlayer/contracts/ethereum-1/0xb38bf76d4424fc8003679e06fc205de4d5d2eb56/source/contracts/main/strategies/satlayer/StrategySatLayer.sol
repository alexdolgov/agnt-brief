// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../../../interfaces/satlayer/ISatlayerPool.sol";
import "../base/StrategyBase.sol";

contract StrategySatLayer is StrategyBase {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    event Deposit(address token, uint256 amount);
    event Withdraw(address token, uint256 amount);
    event AddAllowedToken(address token);
    event RemoveAllowedToken(address token);

    // The version of the contract
    string public constant VERSION = "1.0";

    ISatlayerPool public constant SAT_LAYER_POOL = ISatlayerPool(0x42a856dbEBB97AbC1269EAB32f3bb40C15102819);

    // Allowed deposit tokens
    EnumerableSet.AddressSet private _allowedTokens;

    function initialize(bytes calldata _initBytes) external override initializer {
        (address admin_, address rebalancer_, address[] memory initialAllowedTokens_) = abi.decode(_initBytes, (address, address, address[]));
        if (admin_ == address(0)) revert CustomErrors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert CustomErrors.InvalidRebalancer();
        __Ownable_init(admin_);
        rebalancer = rebalancer_;
        vault = msg.sender;
        for (uint256 i = 0; i < initialAllowedTokens_.length; i++) {
            _allowedTokens.add(initialAllowedTokens_[i]);
            emit AddAllowedToken(initialAllowedTokens_[i]);
        }
    }

    function isAllowedToken(address _token) external view returns (bool) {
        return _allowedTokens.contains(_token);
    }

    function addAllowedToken(address _token) external onlyOwner {
        _allowedTokens.add(_token);
        emit AddAllowedToken(_token);
    }

    function removeAllowedToken(address _token) external onlyOwner {
        _allowedTokens.remove(_token);
        emit RemoveAllowedToken(_token);
    }

    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (!_allowedTokens.contains(_token)) revert CustomErrors.InvalidToken();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        return true;
    }

    function enterPosition(address _token, uint256 _amount) external onlyRebalancer {
        if (!_allowedTokens.contains(_token)) revert CustomErrors.InvalidToken();
        IERC20(_token).safeIncreaseAllowance(address(SAT_LAYER_POOL), _amount);
        SAT_LAYER_POOL.depositFor(_token, address(this) ,_amount);
        emit Deposit(_token, _amount);
    }

    function exitPosition(address _token, uint256 _amount) external onlyRebalancer {
        if (!_allowedTokens.contains(_token)) revert CustomErrors.InvalidToken();
        SAT_LAYER_POOL.withdraw(_token,  _amount);
        emit Withdraw(_token, _amount);
    }

    function getNetAssets() external view override returns (uint256) {
        uint256 length_ = _allowedTokens.length();
        uint256 totalAssets_;
        for (uint256 i = 0; i < length_; ++i) {
            totalAssets_ += IERC20(_allowedTokens.at(i)).balanceOf(address(this));
            address mappedToken_ = SAT_LAYER_POOL.tokenMap(_allowedTokens.at(i));
            if (mappedToken_ != address(0)) {
                totalAssets_ += IERC20(mappedToken_).balanceOf(address(this));
            }
        }
        return totalAssets_;
    }
}