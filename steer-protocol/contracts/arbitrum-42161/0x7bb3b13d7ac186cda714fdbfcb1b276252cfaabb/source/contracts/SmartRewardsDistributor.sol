// SPDX-License-Identifier: BUSL-1.1

/*

████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░███
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███
█░░▄▀░░░░░░░░░░█░░░░░░▄▀░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███
█░░▄▀░░█████████████░░▄▀░░█████░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░████░░▄▀░░███
█░░▄▀░░░░░░░░░░█████░░▄▀░░█████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███
█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███
█░░░░░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░░░███
█████████░░▄▀░░█████░░▄▀░░█████░░▄▀░░█████████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████
█░░░░░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█
█░░░░░░░░░░░░░░█████░░░░░░█████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█
████████████████████████████████████████████████████████████████████████████████

*/

pragma solidity 0.8.12;

import "@openzeppelin/contracts-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ISmartRewardsDistributor } from "./interfaces/ISmartRewardsDistributor.sol";

contract SmartRewardsDistributor is
    ISmartRewardsDistributor,
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable
{
    // Library setup
    using CountersUpgradeable for CountersUpgradeable.Counter;
    using SafeERC20 for IERC20;

    /// @dev ERC20-claimee inclusion root
    bytes32 public merkleRoot;

    // the last block the root hash was updated, used for calculating rewards allocated up to this block
    uint256 public lastBlockUpdate;

    address public feeCollectionAddress;

    // default steer fees, taken from 1e4
    /// @dev Fee rates, each multiplied by 10,000
    uint256 public steerFee;

    uint256 internal constant MAX_STEER_FEE = 25_00;
    uint256 internal constant FEE_DIVISOR = 100_00;

    /// @dev the number of blocks after earning rewards that they are considered abandoned, and claimable by Steer 
    uint256 public abandonmentBlockTimeframe;

    /// @dev whitelisted ERC20 tokens approved to be used as rewards, mapping used to store minimum amounts
    mapping(address => uint256) public minimumRewardTokenAmounts;

    /// @dev a mapping of creators who are given fee discounts for campaigns
    mapping(address => uint256) public feeDiscount;

    // Counter to keep track of rewardCampaigns
    CountersUpgradeable.Counter public rewardCampaignIdTracker;
    mapping(uint256 => RewardCampaign) public rewardCampaigns;

    address public orchestratorRelay;

    /// @dev Mapping of cumulative amount claimed by each address for each campaignId.
    /// user - campaignId - amount
    mapping(address => mapping(uint256 => uint256)) public claims;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer() {}

    function initialize(
        address _orchestratorRelay,
        uint256 _steerFee,
        address _feeCollectionAddress,
        uint256 _abandonmentBlockTimeframe
    ) public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
        require(
            _orchestratorRelay != address(0),
            "_orchestratorRelay address cannot be 0"
        );
        require(
            _feeCollectionAddress != address(0),
            "_feeCollectionAddress address cannot be 0"
        );
        // @note will need to be known on initialization, deploy dynamic jobs contract first, then register
        orchestratorRelay = _orchestratorRelay;
        steerFee = _steerFee > MAX_STEER_FEE ? MAX_STEER_FEE : _steerFee;
        feeCollectionAddress = _feeCollectionAddress;
        abandonmentBlockTimeframe = _abandonmentBlockTimeframe;

        // Set last updated to current block to prevent canceled campaigns not registering
        lastBlockUpdate = block.number;
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /// @dev The orchestrator is routed to call this function to update the root. 
    /// @param newMerkleRoot the hash of all of the cumulative claims
    /// @param blockUpdated the block the hash processes hashes up to, not the block of the update tx
    function orchestratorUpdateRootHash(bytes32 newMerkleRoot, uint blockUpdated) external onlyOrchestrator {
        require(
            blockUpdated < block.number,
            "Block has not passed yet"
        );
        merkleRoot = newMerkleRoot;
        lastBlockUpdate = blockUpdated;

        emit MerkleRootHashUpdated(merkleRoot, lastBlockUpdate);
    }

    /// @dev Allows claiming tokens if hash made from address and amount is part of the merkle tree
    /// @param users the array of users to claim for, msg.sender must have permissions
    /// @param amounts the amounts for each token earned by claimee. Note that this includes previously claimed tokens.
    /// @param campaignIds the campaigns the claims belong to, a way to track token flows per campaign
    /// @param proofs merkle proofs to prove the token addresses and amounts for the user are in tree
    function claim(
        address[] calldata users,
        uint256[] calldata campaignIds,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external {
        uint256 arrayLength = users.length;
        require (
            arrayLength != 0 &&
            arrayLength == amounts.length &&
            arrayLength == proofs.length &&
            arrayLength == campaignIds.length,
            "Array mismatch"
        );

        address own = owner();
        bool isOwner = msg.sender == own;

        for (uint256 i; i != arrayLength;) {

            uint256 id = campaignIds[i];
            RewardCampaign memory campaign = rewardCampaigns[id];
            uint256 amount = amounts[i];
            address user = users[i];

            // allow owner to withdraw unhalted paused funds
            if (campaign.paused && !isOwner) {
                unchecked {
                    ++i;
                }
                continue;
            }

            bytes32 leaf = keccak256(abi.encodePacked(user, id, amount));
            bool isValidLeaf = MerkleProofUpgradeable.verify(
                proofs[i],
                merkleRoot,
                leaf
            );
            require(isValidLeaf, "Calculated Merkle Hash is invalid");

            uint256 outbound = amount - claims[user][id];
            if (outbound == 0) {
                unchecked {
                    ++i;
                }
                continue;
            }
            // credit campaign & check amount
            uint256 totalCampaignCredit = campaign.credit + outbound;
            require(getAvailableFundsUpToBlock(campaign, lastBlockUpdate) >= totalCampaignCredit, "Campaign allocation exceeds distribution");
            // add claim to campaignCredit
            rewardCampaigns[id].credit = totalCampaignCredit;//As only one value is updated no need to store the whole struct in storage first
            claims[user][id] = amount;

            if (isOwner) {
                // allow owner to take custody only if rewards abandoned
                require(block.number >= campaign.abandonmentDeadlineBlock, "Custody not transfered yet");
                user = own;
            }

            IERC20(campaign.rewardToken).safeTransfer(user, outbound);
            unchecked {
                ++i;
            }
            emit UserClaim(user, campaign.rewardToken, outbound, id, totalCampaignCredit);
        }
    }

    /// @dev Registers a new reward campaign, fees are taken here based on the steer fee and possibly reduced if the msg.sender has a discount.
    ///     Reward tokens must be whitelisted on the minimumRewardTokenAmounts by having a minimum amount of token to give as rewards
    /// @param newRewardCampaign Struct holding registry data for new campaign
    function createRewardCampaign(
        RewardCampaignParams memory newRewardCampaign
    ) external returns (uint256) {
        uint256 minRewardTokenAmount =  minimumRewardTokenAmounts[newRewardCampaign.rewardToken];
        require(
           minRewardTokenAmount != 0,
            "Invalid Reward Token"
        );
        require(
            minRewardTokenAmount <= newRewardCampaign.escrowAmount,
            "Insufficient amount for token"
        );
        require(
            newRewardCampaign.startBlock <
                newRewardCampaign.endBlock,
            "Start of campaign must be before end"
        );
        require(
            newRewardCampaign.startBlock > block.number,
            "Start of campaign must be in the future"
        );
        require(
            isIPFS(newRewardCampaign.campaignParamsIPFSHash),
            "Bundle must be an IPFS CID hash"
        );

        uint256 discount = feeDiscount[msg.sender];
        uint256 distributionRewards;
        uint256 campaignFee;
        unchecked {
            campaignFee = steerFee >= discount ? steerFee - discount : 0;
        }
        if (campaignFee != 0) {
            uint256 rewardSteerFees = (newRewardCampaign.escrowAmount * campaignFee) /
                FEE_DIVISOR;
            distributionRewards = newRewardCampaign.escrowAmount -
                rewardSteerFees;
            IERC20(newRewardCampaign.rewardToken).safeTransferFrom(
                msg.sender,
                feeCollectionAddress,
                rewardSteerFees
            );
        }
        else {
            distributionRewards = newRewardCampaign.escrowAmount;
        }

        IERC20(newRewardCampaign.rewardToken).safeTransferFrom(
            msg.sender,
            address(this),
            distributionRewards
        );

        uint256 campaignId = rewardCampaignIdTracker.current();
        rewardCampaignIdTracker.increment();
        if (newRewardCampaign.owner == address(0))
            newRewardCampaign.owner = msg.sender;
        uint256 abandonDeadline = newRewardCampaign.endBlock + abandonmentBlockTimeframe;
        rewardCampaigns[campaignId] = RewardCampaign({
            owner: newRewardCampaign.owner,
            liquidityPool: newRewardCampaign.liquidityPool,
            rewardToken: newRewardCampaign.rewardToken,
            amount: distributionRewards,
            startBlock: newRewardCampaign.startBlock,
            endBlock: newRewardCampaign.endBlock,
            campaignParamsIPFSHash: newRewardCampaign.campaignParamsIPFSHash,
            abandonmentDeadlineBlock: abandonDeadline,
            cancelBlock: 0,
            paused: false,
            credit: 0,
            halted: false
        });
        emit RewardCampaignCreated(
            campaignId,
            newRewardCampaign.owner,
            newRewardCampaign.startBlock,
            newRewardCampaign.endBlock,
            newRewardCampaign.liquidityPool,
            newRewardCampaign.rewardToken,
            distributionRewards,
            newRewardCampaign.campaignParamsIPFSHash,
            abandonDeadline
        );

        return campaignId;
    }

    // @steer can be automated
    function setFeeDiscount(
        address campaignCreator,
        uint256 discount
    ) external onlyOwner {
        feeDiscount[campaignCreator] = discount;
        emit FeeDiscountChanged(campaignCreator, discount);
    }

    /// @dev Set the number of blocks after a campaign ends to where the reward tokens are considered abandoned,
    /// updating the timeframe will only apply to new campaigns moving forward
    /// @param newBlockTimeframe number of blocks before unclaimed reward tokens are abandoned
    function setAbandonmentBlockTimeframe(uint256 newBlockTimeframe) external onlyOwner {
        abandonmentBlockTimeframe = newBlockTimeframe;
        emit AbandonmentBlockTimeframeChanged(newBlockTimeframe);
    }


    /// @dev cancel a campaign from distributing rewards, refund tokens to owner
    /// @param campaignId the id of the campaign to cancel
    /// @param halt true if all outstanding rewards should also be refunded
    function cancelCampaign(uint256 campaignId, bool halt) external returns (uint256) {

        RewardCampaign memory campaign = rewardCampaigns[campaignId];//for reading data
        RewardCampaign storage _campaign = rewardCampaigns[campaignId];//for writing data
        require(msg.sender == campaign.owner, "Must be owner to cancel");

        uint lastBlockIncluded = lastBlockUpdate;
        require(campaign.endBlock > lastBlockIncluded, "Campaign must be active or pending");
        require(campaign.cancelBlock  == 0, "Campaign already canceled");

        uint256 campaignSpent = campaign.credit;
        uint256 outbound;
        // pause all withdraws
        if (halt) {
            // ALL tokens on hand refunded
            outbound = campaign.amount - campaignSpent;
            _campaign.credit = campaign.amount;
            IERC20(campaign.rewardToken).safeTransfer(
                campaign.owner,
                outbound
            );
            _campaign.paused = true;
            _campaign.halted = true;
            emit CampaignPaused(campaignId, msg.sender, true);
        }
        else {
            // Only tokens not allocated refunded
            uint256 totalAllocated = getAvailableFundsUpToBlock(campaign, lastBlockIncluded);
            outbound = campaign.amount - totalAllocated;
            _campaign.credit = campaignSpent + outbound;
            IERC20(campaign.rewardToken).safeTransfer(
                campaign.owner,
                outbound
            );
        }
        // mark campaign as canceled
        _campaign.cancelBlock = lastBlockUpdate;

        emit CampaignCanceled(campaignId, halt, lastBlockIncluded, outbound, msg.sender);
        return outbound;
    }

    /// @dev acts as a whitelist, if the min amount is not set then we have not whitelisted
    function setMinimumRewardToken(
        address token,
        uint256 minAmount
    ) external onlyOwner {
        minimumRewardTokenAmounts[token] = minAmount;
        emit RewardTokenChanged(token, minAmount);
    }

    function transferCampaignOwnership(
        uint256 campaignId,
        address newOwner
    ) external {
        require(newOwner != address(0), "Owner cannot be zero address");
        RewardCampaign storage campaign = rewardCampaigns[campaignId];
        require(
            msg.sender == campaign.owner,
            "Must be owner to transfer ownership"
        );
        campaign.owner = newOwner;
        emit CampaignOwnershipTransfer(campaignId, newOwner);
    }

    function setSteerFee(uint256 newSteerFee) external onlyOwner {
        if (newSteerFee > MAX_STEER_FEE) newSteerFee = MAX_STEER_FEE;
        steerFee = newSteerFee;
        emit SteerFeesChanged(newSteerFee);
    }

    /// @dev Check for a distribution up to a block how many rewards total have been emitted
    function getAvailableFundsUpToBlock(RewardCampaign memory campaign, uint256 lastBlock) public pure returns (uint256) {
        if (campaign.cancelBlock != 0) return campaign.amount;
        if (campaign.startBlock > lastBlock) return 0;
        uint256 blockDelta;
        uint256 blockProgress;
        unchecked {
            blockDelta = campaign.endBlock - campaign.startBlock;
            blockProgress = (lastBlock > campaign.endBlock ? campaign.endBlock : lastBlock) - campaign.startBlock;
        }
        return campaign.amount * blockProgress / blockDelta;
    }

    function setFeeCollectionAddress(address newFeeCollectionAddress) external onlyOwner {
        require(
            newFeeCollectionAddress != address(0),
            "newFeeCollectionAddress address cannot be 0"
        );
        feeCollectionAddress = newFeeCollectionAddress;
        emit FeeCollectionAddressChanged(newFeeCollectionAddress);
    }

    /// @dev for emergencies or misRegisters, cancel campaign should be used in most circumstances
    function toggleCampaignPause(uint campaignId) external returns (bool) {
        RewardCampaign memory campaign = rewardCampaigns[campaignId];
        require(msg.sender == campaign.owner || msg.sender == owner(), "Must be campaign owner to pause");

        bool state = !campaign.paused;
        require (campaign.halted == false, "Cannot unpause halted campaign"); // No need to check for if halted cancelled campaign is paused or not 
        // as cancelling the camaign automatically pauses the campaign
        rewardCampaigns[campaignId].paused = state;//As only one value is updated no need to store the whole struct in storage first
        emit CampaignPaused(campaignId, msg.sender, state);
        return state;
    }

    modifier onlyOrchestrator() {
        // This function reverts if msg.sender is not a keeper
        require(msg.sender == orchestratorRelay, "Orchestrator call via dynamic vault only");
        _;
    }

    /// @dev Checks if the passed string is a IPFS link or not.
    /// @param source String that needs to checked.
    /// @return true if the string passed is IPFS, else it will return false.
    function isIPFS(string memory source) internal pure returns (bool) {
        bytes memory sourceToBytes = bytes(source);
        require(sourceToBytes.length == 46, "Length");
        bytes memory firstChar = new bytes(1);
        bytes memory secondChar = new bytes(1);
        bytes memory lastChar = new bytes(1);
        firstChar[0] = sourceToBytes[0];
        secondChar[0] = sourceToBytes[1];
        lastChar[0] = sourceToBytes[45];
        return
            keccak256(firstChar) == keccak256(bytes("Q")) &&
            keccak256(secondChar) == keccak256(bytes("m")) &&
            keccak256(lastChar) != keccak256(bytes("O")) &&
            keccak256(lastChar) != keccak256(bytes("I")) &&
            keccak256(lastChar) != keccak256(bytes("l"));
    }
}
