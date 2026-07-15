// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IERC7540Redeem, IERC4626} from "../interfaces/IAsyncModule.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IValuationModule} from "../interfaces/IValuationModule.sol";

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";

contract Keeper {
    constructor(address underlying) {
        IERC20(underlying).approve(msg.sender, type(uint256).max);
    }
}

contract AsyncWithdraw is IERC7540Redeem {
    mapping(address receiver => RedeemRequest req) public redeemRequests;
    mapping(uint256 epochId => EpochInfo) public epochInfo;

    uint256 constant ONE_HUNDRED_PERCENT = 10000;
    uint256 public epochId = 1;
    uint256 public totalSharesWithdraw;
    address public immutable vault;
    address immutable pendingKeeper;
    address immutable claimableKeeper;
    bool public isVaultOpen = true;

    constructor(address _vault) {
        vault = _vault;
        claimableKeeper = address(new Keeper(IERC4626(vault).asset()));
        pendingKeeper = address(new Keeper(vault));
    }

    modifier onlyTreasury() {
        require(
            msg.sender == IVault(vault).getTreasury(),
            "AsyncWithdraw: Only Treasury"
        );
        _;
    }

    modifier whenNotClosed() {
        require(isVaultOpen == true, "AsyncWithdraw: Vault close");
        _;
    }

    function requestRedeem(
        uint256 shares,
        address receiver,
        address owner
    ) external whenNotClosed returns (uint256 requestId) {
        (, uint256 claimableShares) = claimableRedeemRequest(receiver);
        if (claimableShares > 0) {
            claimRedeemRequest(receiver);
        }

        if (maxRedeemRequest(owner) < shares) {
            revert ExceededMaxRedeemRequest(
                receiver,
                shares,
                maxRedeemRequest(owner)
            );
        }

        IVault(vault).requestRedeem(shares, msg.sender, owner);

        redeemRequests[receiver].shares += shares;
        if (redeemRequests[receiver].requestId != epochId) {
            redeemRequests[receiver].requestId = epochId;
        }

        totalSharesWithdraw += shares;

        emit RequestRedeem(receiver, owner, epochId, msg.sender, shares);

        return epochId;
    }

    function decreaseRedeemRequest(uint256 shares) external whenNotClosed {
        address receiver = msg.sender;
        if (redeemRequests[receiver].requestId != epochId)
            revert OnlyDecreaseAmoutWithinSameEpoch(
                redeemRequests[receiver].requestId,
                epochId
            );
        uint256 oldRequest = redeemRequests[receiver].shares;
        if (oldRequest < shares)
            revert InvalidDecreaseAmount(oldRequest, shares);
        redeemRequests[receiver].shares -= shares;
        totalSharesWithdraw -= shares;
        IERC4626(vault).transferFrom(pendingKeeper, receiver, shares);

        emit DecreaseRedeemRequest(receiver, epochId, oldRequest, shares);
    }

    function claimRedeemRequest(address receiver) public {
        uint256 lastRequestId = redeemRequests[receiver].requestId;

        if (lastRequestId == epochId) {
            revert NoClaimAvailable();
        }
        uint256 totalAssets;
        uint256 totalShares;
        while (lastRequestId < epochId) {
            (uint256 assets, uint256 shares) = _claimableRedeemRequest(
                receiver,
                lastRequestId
            );
            if (shares == 0) break;
            totalAssets += assets;
            totalShares += shares;
            redeemRequests[receiver].shares -= shares;

            lastRequestId++;
        }

        SafeERC20.safeTransferFrom(
            IERC20(IERC4626(vault).asset()),
            claimableKeeper,
            receiver,
            totalAssets
        );

        redeemRequests[receiver].requestId = epochId;
        emit ClaimRedeem(
            lastRequestId,
            receiver,
            totalAssets,
            totalShares,
            block.timestamp
        );
    }

    function pendingRedeemRequest(
        address receiver
    ) external view returns (uint256 shares) {
        (, uint256 claimableShares) = claimableRedeemRequest(receiver);
        return redeemRequests[receiver].shares - claimableShares;
    }

    function claimableRedeemRequest(
        address receiver
    ) public view returns (uint256, uint256) {
        if (redeemRequests[receiver].requestId == epochId) return (0, 0);
        uint256 lastRequestId = redeemRequests[receiver].requestId;

        uint256 totalAssets;
        uint256 totalShares;
        uint256 remainShares = redeemRequests[receiver].shares;
        while (lastRequestId < epochId) {
            uint256 shares = (remainShares *
                epochInfo[lastRequestId].fulfillment) / ONE_HUNDRED_PERCENT;
            uint256 assets = (shares * epochInfo[lastRequestId].rate) /
                10 ** IERC4626(vault).decimals();
            totalShares += shares;
            remainShares -= shares;
            totalAssets += assets;

            lastRequestId++;
        }
        return (totalAssets, totalShares);
    }

    function _claimableRedeemRequest(
        address receiver,
        uint256 lastRequestId
    ) internal view returns (uint256 assets, uint256 shares) {
        shares =
            (redeemRequests[receiver].shares *
                epochInfo[lastRequestId].fulfillment) /
            ONE_HUNDRED_PERCENT;
        assets =
            (shares * epochInfo[lastRequestId].rate) /
            10 ** IERC4626(vault).decimals();
    }

    function maxRedeemRequest(address owner) public view returns (uint256) {
        return IERC4626(vault).balanceOf(owner);
    }

    function close() external whenNotClosed onlyTreasury {
        isVaultOpen = false;
        emit EpochClosed(block.timestamp, totalSharesWithdraw);
    }

    function open(uint256 shares) external onlyTreasury {
        if (isVaultOpen) {
            revert VaultIsOpen();
        }

        _settle(shares);

        epochId++;
        isVaultOpen = true;
    }

    function _settle(uint256 shares) internal {
        uint256 rate = IERC4626(vault).convertToAssets(
            10 ** IERC4626(vault).decimals()
        );
        epochInfo[epochId].rate = rate;

        uint256 assetFulfilled = (shares * rate) /
            10 ** IERC4626(vault).decimals();

        require(
            shares >= totalSharesWithdraw / ONE_HUNDRED_PERCENT,
            "Fulfillment must exceed 0.01%"
        );

        epochInfo[epochId].fulfillment =
            (shares * ONE_HUNDRED_PERCENT) /
            totalSharesWithdraw;
        totalSharesWithdraw -= shares;

        IVault(vault).forceBurn(shares);

        SafeERC20.safeTransferFrom(
            IERC20(IERC4626(vault).asset()),
            msg.sender,
            claimableKeeper,
            assetFulfilled
        );

        (, address valuationModule, , , ) = IVault(vault).getModules();
        if (valuationModule != address(0)) {
            IValuationModule(valuationModule).updateAsset(
                IERC4626(vault).asset()
            );
        }

        emit EpochSettled(block.timestamp, assetFulfilled, shares, rate);
    }

    function getClaimableKeeper() external view returns (address) {
        return claimableKeeper;
    }

    function getPendingKeeper() external view returns (address) {
        return pendingKeeper;
    }
}
