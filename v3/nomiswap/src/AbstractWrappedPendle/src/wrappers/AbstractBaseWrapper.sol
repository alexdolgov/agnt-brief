// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import "src/helpers/SwapExecutor.sol";
import "src/interfaces/IWrapper.sol";

abstract contract AbstractBaseWrapper is
    AccessManagedUpgradeable,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    IWrapper
{
    using SafeERC20 for IERC20;
    using Math for uint256;

    address private immutable assetToken;

    constructor(address _asset) {
        assetToken = _asset;
        _disableInitializers();
    }

    function __AbstractBaseWrapper_init(address authority_)
        internal
        onlyInitializing
    {
        __AccessManaged_init(authority_);
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();
        __Pausable_init();
    }

    function _authorizeUpgrade(address) internal override restricted {
    }

    function pause() public restricted {
        _pause();
    }

    function unpause() public restricted {
        _unpause();
    }

    function asset() public view virtual returns (address assetTokenAddress) {
        assetTokenAddress = assetToken;
    }

    function depositRaw(address dustReceiver)
        external
        override
        whenNotPaused
        returns (uint shares)
    {
        return _depositRaw(dustReceiver, msg.sender);
    }

    function depositRaw(address dustReceiver, address receiver)
        public
        override
        virtual
        whenNotPaused
        nonReentrant
        returns (uint shares)
    {
        return _depositRaw(dustReceiver, receiver);
    }

    function redeemRaw(uint256 shares, address to)
        public
        override
        virtual
        nonReentrant
        returns (address[] memory tokens, uint256[] memory amounts)
    {
        return _redeemRaw(shares, to);
    }

    function claim(address receiver)
        external
        override
        virtual
        restricted
    {
        _claim(receiver);
    }

    function recoverFunds(TransferInfo calldata ti, address to)
        external
        override
        virtual
        restricted
    {
        require(
            !_isAddressInArray(ti.token, depositTokens()) &&
            !_isAddressInArray(ti.token, rewardTokens()) &&
            !_isAddressInArray(ti.token, poolTokens()) &&
            ti.token != asset(),
                "Unupported token"
        );
        IERC20(ti.token).safeTransfer(to, ti.amount);
    }

    function _returnDust(address dustReceiver) internal {
        address[] memory tokens = depositTokens();
        uint tokensLength = tokens.length;

        for (uint i = 0; i < tokensLength; ++i) {
            IERC20 token = IERC20(tokens[i]);
            uint256 tokenBalance = token.balanceOf(address(this));

            if (tokenBalance > 0) {
                SafeERC20.safeTransfer(token, dustReceiver, tokenBalance);
            }
        }
    }

    function _isAddressInArray(address _addr, address[] memory _addresses) private pure returns (bool) {
        for (uint i = 0; i < _addresses.length; i++) {
            if (_addr == _addresses[i]) {
                return true;
            }
        }
        return false;
    }

    function depositTokens() public override virtual view returns (address[] memory tokens);
    function rewardTokens() public override view virtual returns(address[] memory tokens);
    function poolTokens() public override view virtual returns(address[] memory tokens);

    function _depositRaw(address dustReceiver, address receiver) internal virtual returns (uint shares);
    function _redeemRaw(uint256 shares, address to) internal virtual returns (address[] memory tokens, uint256[] memory amounts);
    function _claim(address receiver) internal virtual;

}