// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {Strategy, IMasterOracle, SwapAggregator, SwapParams} from "./Strategy.sol";
import {ERC4626, ERC4626DelegateCalls} from "src/components/ERC4626.sol";

contract ERC4626Strategy is Strategy {
    using SafeERC20 for IERC20;
    using ERC4626DelegateCalls for ERC4626;

    ERC4626 public immutable erc4626;

    error InvalidVault();
    error InvalidAmount();

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:odyssey.storage.ERC4626Strategy
    struct ERC4626StrategyStorage {
        IERC4626 _vault;
    }

    bytes32 private constant ERC4626StrategyStorageLocation =
        keccak256(abi.encode(uint256(keccak256("odyssey.storage.ERC4626Strategy")) - 1)) & ~bytes32(uint256(0xff));

    function _getERC4626StrategyStorage() private pure returns (ERC4626StrategyStorage storage $) {
        bytes32 location = ERC4626StrategyStorageLocation;
        assembly {
            $.slot := location
        }
    }

    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        IMasterOracle oracle_,
        SwapAggregator swapAggregator_,
        ERC4626 erc4626_
    ) Strategy(oracle_, swapAggregator_) {
        if (address(erc4626_) == address(0)) revert AddressIsNull();

        erc4626 = erc4626_;
    }

    /*//////////////////////////////////////////////////////////////
                                 PARAMS
    //////////////////////////////////////////////////////////////*/

    function _setCustomParams(bytes memory customParams_) internal override {
        IERC4626 _vault = IERC4626(abi.decode(customParams_, (address)));
        if (address(_vault) == address(0)) revert AddressIsNull();
        if (_vault.asset() != address(asset())) revert InvalidVault();
        ERC4626StrategyStorage storage $ = _getERC4626StrategyStorage();
        $._vault = _vault;
    }

    function _unsetCustomParams() internal override {
        ERC4626StrategyStorage storage $ = _getERC4626StrategyStorage();
        delete $._vault;
    }

    /*//////////////////////////////////////////////////////////////
                               OVERRIDES
    //////////////////////////////////////////////////////////////*/

    function _totalAllocated() internal view override returns (uint256 _assets) {
        IERC4626 _vault = vault();
        _assets = _vault.convertToAssets(_vault.balanceOf(address(this)));
    }

    function _depositAsset(uint256 assets_) internal override {
        erc4626.delegateDeposit(vault(), assets_);
    }

    function _withdrawAsset(uint256 assets_) internal virtual override returns (uint256) {
        erc4626.delegateWithdraw(vault(), assets_);
        return assets_;
    }

    // @dev Assuming claim rewards will be be done from outside this call. Only swap and allocate here.
    function _claimAllAndAllocate(
        SwapParams[] memory swapParams_,
        bytes memory extraParams_
    ) internal override returns (uint256 _claimedInAssets) {
        if (extraParams_.length == 0) return 0;
        (IERC20[] memory _tokens, uint256[] memory _amounts) = abi.decode(extraParams_, (IERC20[], uint256[]));
        _claimedInAssets = _swapRewardsForAssets(swapParams_, _tokens, _amounts);

        if (_claimedInAssets > 0) {
            erc4626.delegateDeposit(vault(), _claimedInAssets);
        }
    }

    /*//////////////////////////////////////////////////////////////
                                FEATURES
    //////////////////////////////////////////////////////////////*/

    function _push(bytes memory params_) internal override {
        (uint256 _assets, uint256 _shares) = abi.decode(params_, (uint256, uint256));
        if ((_assets == 0 && _shares == 0) || (_assets != 0 && _shares != 0)) revert InvalidAmount();
        if (_shares != 0) {
            erc4626.delegateMint(vault(), _shares);
        } else {
            _depositAsset(_assets);
        }
    }

    function _pull(bytes memory params_) internal override {
        (uint256 _assets, uint256 _shares) = abi.decode(params_, (uint256, uint256));
        if ((_assets == 0 && _shares == 0) || (_assets != 0 && _shares != 0)) revert InvalidAmount();

        if (_shares != 0) {
            erc4626.delegateRedeem(vault(), _shares);
        } else {
            _withdrawAsset(_assets);
        }
    }

    /// @notice Get asset token
    function vault() public view returns (IERC4626) {
        ERC4626StrategyStorage storage $ = _getERC4626StrategyStorage();
        return $._vault;
    }
}
