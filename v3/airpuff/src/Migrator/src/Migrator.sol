// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {Ownable2StepUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol";
import {ERC1155Burnable} from "openzeppelin-contracts/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import {ERC1155Supply} from "openzeppelin-contracts/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import {SafeTransferLib} from "solmate/utils/SafeTransferLib.sol";
import {ERC1155TokenReceiver} from "solmate/tokens/ERC1155.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {Errors} from "./libraries/Errors.sol";
import {IPirexBtrfly} from "./interfaces/IPirexBtrfly.sol";
import {IERC20MintBurn} from "./interfaces/IERC20MintBurn.sol";
import {IPxBtrfly} from "./interfaces/IPxBtrfly.sol";
import {IApxBtrfly} from "./interfaces/IApxBtrfly.sol";
import {IStakedDinero} from "./interfaces/IStakedDinero.sol";

/**
 * @title  Migrator
 * @notice Handles migration from BTRFLYV2 and its derivatives to the new DINERO token.
 * @dev    Also handles claiming remaining snapshot and futures rewards
           from the legacy PirexBtrfly contract. As such, the migrator is also assigned
           to be the recipient of the emergency withdrawal procedure of PirexBtrfly.
 * @author dinero.protocol
 */
contract Migrator is
    Ownable2StepUpgradeable,
    ReentrancyGuardUpgradeable,
    ERC1155TokenReceiver
{
    /**
     * @dev Library: ERC20 - Provides safe transfer functions for ERC20.
     */
    using SafeTransferLib for ERC20;

    // Constants

    /**
     * @dev Amount of DINERO minted for each migrated BTRFLYV2.
     */
    uint256 public constant TOKEN_RATIO = 2_000;

    /**
     * @dev Address of the BTRFLYV2 token contract.
     */
    ERC20 public immutable btrflyV2;

    /**
     * @dev Address of the PirexBtrfly contract.
     */
    IPirexBtrfly public immutable pirexBtrfly;

    /**
     * @dev Address of the pxBTRFLY token contract.
     */
    IPxBtrfly public immutable pxBtrfly;

    /**
     * @dev Address of the apxBTRFLY token contract.
     */
    IApxBtrfly public immutable apxBtrfly;

    /**
     * @dev Address of the upxBTRFLY token contract.
     */
    ERC1155Burnable public immutable upxBtrfly;

    /**
     * @dev Address of the rpxBTRFLY token contract.
     */
    ERC1155Burnable public immutable rpxBtrfly;

    /**
     * @dev Address of the DINERO token contract.
     */
    ERC20 public immutable dinero;

    /**
     * @dev Address of the sDINERO token contract.
     */
    IStakedDinero public immutable stakedDinero;

    // Events

    /**
     * @notice Emitted on token migrations.
     * @dev    This event is emitted when a migration is performed.
     * @param  sender          address  indexed  Address of the BTRFLYV2 owner.
     * @param  receiver        address  indexed  Address of the receiver.
     * @param  btrflyV2Amount  uint256           BTRFLYV2 amount.
     * @param  dineroAmount    uint256           DINERO amount.
     * @param  staked          bool              Whether staking is also performed.
     */
    event Migrate(
        address indexed sender,
        address indexed receiver,
        uint256 btrflyV2Amount,
        uint256 dineroAmount,
        bool staked
    );

    /**
     * @notice Emitted on snapshot rewards redemptions.
     * @dev    This event is emitted when snapshot rewards are redeemed.
     * @param  epoch            uint256    indexed  Epoch.
     * @param  rewardIndexes    uint256[]           Reward indexes.
     * @param  receiver         address    indexed  Receiver.
     * @param  snapshotBalance  uint256             Snapshot balance.
     * @param  snapshotSupply   uint256             Snapshot supply.
     */
    event RedeemSnapshotRewards(
        uint256 indexed epoch,
        uint256[] rewardIndexes,
        address indexed receiver,
        uint256 snapshotBalance,
        uint256 snapshotSupply
    );

    /**
     * @notice Emitted on futures rewards redemptions.
     * @dev    This event is emitted when futures rewards are redeemed.
     * @param  epoch     uint256    indexed  Epoch.
     * @param  receiver  address    indexed  Receiver.
     * @param  rewards   bytes32[]           Rewards.
     */
    event RedeemFuturesRewards(
        uint256 indexed epoch,
        address indexed receiver,
        bytes32[] rewards
    );

    /**
     * @param  _btrflyV2      address  Address of the BTRFLYV2 token contract.
     * @param  _pirexBtrfly   address  Address of the PirexBtrfly contract.
     * @param  _pxBtrfly      address  Address of the pxBTRFLY token contract.
     * @param  _apxBtrfly     address  Address of the apxBTRFLY token contract.
     * @param  _upxBtrfly     address  Address of the upxBTRFLY token contract.
     * @param  _rpxBtrfly     address  Address of the rpxBTRFLY token contract.
     * @param  _dinero        address  Address of the DINERO token contract.
     * @param  _stakedDinero  address  Address of the sDINERO token contract.
     */
    constructor(
        address _btrflyV2,
        address _pirexBtrfly,
        address _pxBtrfly,
        address _apxBtrfly,
        address _upxBtrfly,
        address _rpxBtrfly,
        address _dinero,
        address _stakedDinero
    ) {
        _disableInitializers();

        if (_btrflyV2 == address(0)) revert Errors.ZeroAddress();
        if (_pirexBtrfly == address(0)) revert Errors.ZeroAddress();
        if (_pxBtrfly == address(0)) revert Errors.ZeroAddress();
        if (_apxBtrfly == address(0)) revert Errors.ZeroAddress();
        if (_upxBtrfly == address(0)) revert Errors.ZeroAddress();
        if (_rpxBtrfly == address(0)) revert Errors.ZeroAddress();
        if (_dinero == address(0)) revert Errors.ZeroAddress();
        if (_stakedDinero == address(0)) revert Errors.ZeroAddress();

        btrflyV2 = ERC20(_btrflyV2);
        pirexBtrfly = IPirexBtrfly(_pirexBtrfly);
        pxBtrfly = IPxBtrfly(_pxBtrfly);
        apxBtrfly = IApxBtrfly(_apxBtrfly);
        upxBtrfly = ERC1155Burnable(_upxBtrfly);
        rpxBtrfly = ERC1155Burnable(_rpxBtrfly);
        dinero = ERC20(_dinero);
        stakedDinero = IStakedDinero(_stakedDinero);
    }

    /**
     * @notice Initialize the Migrator contract.
     * @dev    This function must be called only once during contract deployment.
     * @param  _initialOwner  address  Initial owner address.
     */
    function initialize(address _initialOwner) external initializer {
        // Setup all parent contracts init calls
        __Ownable_init(_initialOwner);
        __ReentrancyGuard_init();

        dinero.safeApprove(address(stakedDinero), type(uint256).max);
    }

    /**
     * @notice Migrate from BTRFLYV2 to DINERO.
     * @param  _receiver          address    Address to mint tokens to.
     * @param  _btrflyV2Amount    uint256    Amount of BTRFLYV2 to migrate.
     * @param  _pxBtrflyAmount    uint256    Amount of pxBTRFLY to migrate.
     * @param  _apxBtrflyAmount   uint256    Amount of apxBTRFLY to migrate.
     * @param  _upxBtrflyIds      uint256[]  IDs of upxBTRFLY to migrate.
     * @param  _upxBtrflyAmounts  uint256[]  Amounts of upxBTRFLY to migrate.
     * @param  _stake             bool       Whether should also stake.
     * @return                    uint256    Total converted amount.
     */
    function migrate(
        address _receiver,
        uint256 _btrflyV2Amount,
        uint256 _pxBtrflyAmount,
        uint256 _apxBtrflyAmount,
        uint256[] memory _upxBtrflyIds,
        uint256[] memory _upxBtrflyAmounts,
        bool _stake
    ) external nonReentrant returns (uint256) {
        if (_receiver == address(0)) revert Errors.ZeroAddress();

        uint256 totalBtrflyAmount = 0;

        // Process vanilla BTRFLYV2 tokens
        if (_btrflyV2Amount > 0) {
            _processBtrflyV2(_btrflyV2Amount);

            totalBtrflyAmount += _btrflyV2Amount;
        }

        // Process pxBTRFLY and apxBTRFLY tokens
        totalBtrflyAmount += _processPxApx(_pxBtrflyAmount, _apxBtrflyAmount);

        // Process upxBTRFLY tokens
        totalBtrflyAmount += _processUpx(_upxBtrflyIds, _upxBtrflyAmounts);

        if (totalBtrflyAmount == 0) revert Errors.ZeroAmount();

        // Mint the converted amount of DINERO token based on the predefined ratio
        uint256 convertedAmount = totalBtrflyAmount * TOKEN_RATIO;

        IERC20MintBurn(address(dinero)).mint(
            (_stake ? address(this) : _receiver),
            convertedAmount
        );

        // Also stake if required by the caller
        // Note, only mint sDinero to the caller
        if (_stake) {
            stakedDinero.deposit(convertedAmount, msg.sender);
        }

        emit Migrate(
            msg.sender,
            _receiver,
            totalBtrflyAmount,
            convertedAmount,
            _stake
        );

        return convertedAmount;
    }

    /**
     * @notice Redeem snapshot rewards for legacy pxBTRFLY holders on a specific epoch and indexes.
     * @dev    Based on the exact same snippet from PirexBtrfly.
     * @param  epoch          uint256    Epoch.
     * @param  rewardIndexes  uint256[]  Reward token indexes.
     * @param  receiver       address    Reward receiver.
     */
    function redeemSnapshotRewards(
        uint256 epoch,
        uint256[] calldata rewardIndexes,
        address receiver
    ) external nonReentrant {
        if (receiver == address(0)) revert Errors.ZeroAddress();

        _redeemSnapshotRewards(epoch, rewardIndexes, msg.sender, receiver);
    }

    /**
     * @notice Bulk redeem snapshot rewards for legacy pxBTRFLY holders for multiple epochs.
     * @dev    Based on the exact same snippet from PirexBtrfly.
     * @param  epochs    uint256[]  Epochs.
     * @param  receiver  address    Reward receiver.
     */
    function bulkRedeemSnapshotRewards(
        uint256[] calldata epochs,
        address receiver
    ) external nonReentrant {
        uint256 eLen = epochs.length;

        if (eLen == 0) revert Errors.EmptyArray();
        if (receiver == address(0)) revert Errors.ZeroAddress();

        for (uint256 i; i < eLen; ++i) {
            uint256 epoch = epochs[i];

            _redeemSnapshotRewards(
                epoch,
                _getRewardIndexes(epoch),
                msg.sender,
                receiver
            );
        }
    }

    /**
     * @notice Bulk redeem futures rewards for rpxBTRFLY holders for multiple epochs.
     * @dev    Based on the exact same snippet from PirexBtrfly.
     * @param  epochs    uint256[]  Epochs.
     * @param  receiver  address    Reward receiver.
     */
    function bulkRedeemFuturesRewards(
        uint256[] calldata epochs,
        address receiver
    ) external nonReentrant {
        uint256 eLen = epochs.length;

        if (eLen == 0) revert Errors.EmptyArray();
        if (receiver == address(0)) revert Errors.ZeroAddress();

        for (uint256 i; i < eLen; ++i) {
            _redeemFuturesRewards(epochs[i], receiver);
        }
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Process BTRFLYV2 tokens for migration.
     * @dev    Internally burn the BTRFLYV2 tokens.
     * @param  _amount  uint256  Amounts of BTRFLYV2.
     */
    function _processBtrflyV2(uint256 _amount) internal {
        btrflyV2.safeTransferFrom(msg.sender, address(this), _amount);

        // Burn BTRFLYV2 tokens
        IERC20MintBurn(address(btrflyV2)).burn(_amount);
    }

    /**
     * @notice Process pxBTRFLY and apxBTRFLY tokens for migration.
     * @dev    Internally burn equivalent amount of BTRFLYV2 (from PirexBtrfly) and pxBTRFLY tokens.
     * @param  _pxBtrflyAmount   uint256  Amounts of pxBTRFLY.
     * @param  _apxBtrflyAmount  uint256  Amounts of apxBTRFLY.
     * @return                   uint256  Redeemed amount.
     */
    function _processPxApx(
        uint256 _pxBtrflyAmount,
        uint256 _apxBtrflyAmount
    ) internal returns (uint256) {
        uint256 pxBtrflyAmount = _pxBtrflyAmount;

        if (_pxBtrflyAmount > 0) {
            ERC20(address(pxBtrfly)).safeTransferFrom(
                msg.sender,
                address(this),
                _pxBtrflyAmount
            );
        }

        if (_apxBtrflyAmount > 0) {
            ERC20(address(apxBtrfly)).safeTransferFrom(
                msg.sender,
                address(this),
                _apxBtrflyAmount
            );

            // Redeem back into pxBTRFLY
            pxBtrflyAmount += apxBtrfly.redeem(
                _apxBtrflyAmount,
                address(this),
                address(this)
            );
        }

        if (pxBtrflyAmount > 0) {
            // Burn pxBTRFLY tokens
            pxBtrfly.burn(address(this), pxBtrflyAmount);

            // Burn equivalent amount of BTRFLYV2 tokens
            IERC20MintBurn(address(btrflyV2)).burn(pxBtrflyAmount);
        }

        return pxBtrflyAmount;
    }

    /**
     * @notice Process upxBTRFLY tokens for migration.
     * @dev    Internally redeem on behalf of users and then burn the received BTRFLYV2.
     * @param  _upxBtrflyIds      uint256[]  IDs of upxBTRFLY to migrate.
     * @param  _upxBtrflyAmounts  uint256[]  Amounts of upxBTRFLY to migrate.
     * @return                    uint256    Redeemed amount.
     */
    function _processUpx(
        uint256[] memory _upxBtrflyIds,
        uint256[] memory _upxBtrflyAmounts
    ) internal returns (uint256) {
        uint256 idLen = _upxBtrflyIds.length;
        uint256 amountLen = _upxBtrflyAmounts.length;

        if (idLen != amountLen) revert Errors.MismatchedArrayLengths();

        if (idLen > 0) {
            uint256 preRedeemBalance = btrflyV2.balanceOf(address(this));

            // Transfer and redeem using upxBTRFLY
            // Note: setApprovalForAll is required prior to the migration
            upxBtrfly.safeBatchTransferFrom(
                msg.sender,
                address(this),
                _upxBtrflyIds,
                _upxBtrflyAmounts,
                ""
            );

            pirexBtrfly.redeemLegacy(
                _upxBtrflyIds,
                _upxBtrflyAmounts,
                address(this)
            );

            uint256 redeemed = btrflyV2.balanceOf(address(this)) -
                preRedeemBalance;

            // Burn redeemed BTRFLYV2 tokens
            IERC20MintBurn(address(btrflyV2)).burn(redeemed);

            return redeemed;
        }

        return 0;
    }

    /**
     * @notice Redeem multiple snapshot rewards as a pxBTRFLY holder for an epoch.
     * @dev    Based on the exact same snippet from PirexBtrfly.
     * @param  epoch          uint256    Epoch.
     * @param  rewardIndexes  uint256[]  Reward token indexes.
     * @param  account        address    pxBTRFLY holder.
     * @param  receiver       address    Reward receiver.
     */
    function _redeemSnapshotRewards(
        uint256 epoch,
        uint256[] memory rewardIndexes,
        address account,
        address receiver
    ) internal {
        uint256 rewardLen = rewardIndexes.length;

        if (epoch == 0) revert Errors.InvalidEpoch();
        if (rewardLen == 0) revert Errors.EmptyArray();

        (
            uint256 snapshotId,
            bytes32[] memory rewards,
            uint256[] memory snapshotRewards,

        ) = pxBtrfly.getEpoch(epoch);

        // Used to update the redeemed flag locally before updating to the storage all at once for gas efficiency
        uint256 redeemed = pxBtrfly.getEpochRedeemedSnapshotRewards(
            account,
            epoch
        );

        // Check whether the holder maintained a positive balance before the snapshot
        uint256 snapshotBalance = pxBtrfly.balanceOfAt(account, snapshotId);
        uint256 snapshotSupply = pxBtrfly.totalSupplyAt(snapshotId);

        if (snapshotBalance == 0) revert Errors.InsufficientBalance();

        emit RedeemSnapshotRewards(
            epoch,
            rewardIndexes,
            receiver,
            snapshotBalance,
            snapshotSupply
        );

        for (uint256 i; i < rewardLen; ++i) {
            uint256 index = rewardIndexes[i];
            uint256 indexRedeemed = (1 << index);
            address token = address(uint160(bytes20(rewards[index])));
            uint256 rewardAmount = (snapshotRewards[index] * snapshotBalance) /
                snapshotSupply;

            if ((redeemed & indexRedeemed) != 0)
                revert Errors.AlreadyRedeemed();

            if (rewardAmount != 0) {
                redeemed |= indexRedeemed;

                ERC20(token).safeTransfer(receiver, rewardAmount);
            }
        }

        // Update the redeemed rewards flag in storage to prevent double claimings
        pxBtrfly.setEpochRedeemedSnapshotRewards(account, epoch, redeemed);
    }

    /**
     * @notice Redeem futures rewards for rpxBTRFLY holders for an epoch.
     * @dev    Based on the exact same snippet from PirexBtrfly.
     * @param  epoch     uint256  Epoch (ERC1155 token id).
     * @param  receiver  address  Receives futures rewards.
     */
    function _redeemFuturesRewards(uint256 epoch, address receiver) internal {
        if (epoch == 0) revert Errors.InvalidEpoch();

        (
            ,
            bytes32[] memory rewards,
            ,
            uint256[] memory futuresRewards
        ) = pxBtrfly.getEpoch(epoch);

        if (rewards.length == 0) revert Errors.NoRewards();

        emit RedeemFuturesRewards(epoch, receiver, rewards);

        // Check sender rpxBTRFLY balance
        uint256 rpxBtrflyBalance = rpxBtrfly.balanceOf(msg.sender, epoch);

        if (rpxBtrflyBalance == 0) revert Errors.InsufficientBalance();

        // Store rpxBTRFLY total supply before burning
        uint256 rpxBtrflyTotalSupply = ERC1155Supply(address(rpxBtrfly))
            .totalSupply(epoch);

        // Burn rpxBTRFLY tokens
        rpxBtrfly.burn(msg.sender, epoch, rpxBtrflyBalance);

        uint256 rLen = rewards.length;

        // Loop over rewards and transfer the amount entitled to the rpxBTRFLY token holder
        for (uint256 i; i < rLen; ++i) {
            address token = address(uint160(bytes20(rewards[i])));
            uint256 rewardAmount = (futuresRewards[i] * rpxBtrflyBalance) /
                rpxBtrflyTotalSupply;

            // Update reward amount by deducting the amount transferred to the receiver
            futuresRewards[i] -= rewardAmount;

            // Proportionate to the % of rpxBTRFLY owned out of the rpxBTRFLY total supply
            ERC20(token).safeTransfer(receiver, rewardAmount);
        }

        // Update future rewards to reflect the amounts remaining post-redemption
        pxBtrfly.updateEpochFuturesRewards(epoch, futuresRewards);
    }

    /**
     * @notice Get reward indexes for the specified epoch.
     * @dev    Based on the exact same snippet from PirexBtrfly.
     * @param  epoch          uint256    Epoch.
     * @return rewardIndexes  uint256[]  Reward token indexes.
     */
    function _getRewardIndexes(
        uint256 epoch
    ) internal view returns (uint256[] memory rewardIndexes) {
        (, bytes32[] memory rewards, , ) = pxBtrfly.getEpoch(epoch);

        uint256 tLen = rewards.length;
        rewardIndexes = new uint256[](tLen);

        for (uint256 i; i < tLen; ++i) {
            rewardIndexes[i] = i;
        }
    }

    /**
     * @notice Handle the receipt of multiple ERC1155 token types.
     * @dev    An ERC1155-compliant smart contract MUST call this function on the token recipient contract, at the end of a `safeBatchTransferFrom` after the balances have been updated.        
               This function MUST return `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))` (i.e. 0xbc197c81) if it accepts the transfer(s).
               This function MUST revert if it rejects the transfer(s).
               Return of any other value than the prescribed keccak256 generated value MUST result in the transaction being reverted by the caller.
     * @return bytes4  `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))`.
    */
    function onERC1155BatchReceived(
        address,
        address,
        uint256[] calldata,
        uint256[] calldata,
        bytes calldata
    ) external pure override returns (bytes4) {
        return ERC1155TokenReceiver.onERC1155BatchReceived.selector;
    }
}
