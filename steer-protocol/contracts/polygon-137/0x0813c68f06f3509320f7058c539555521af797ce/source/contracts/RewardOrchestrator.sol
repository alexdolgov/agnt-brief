// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

import "./KeeperRegistry.sol";

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./interfaces/IRewardOrchestrator.sol";
import "./interfaces/IRunnerRewarder.sol";

contract RewardOrchestrator is
    IRewardOrchestrator,
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable
{
    uint256 public constant actionThresholdPercent = 51;

    KeeperRegistry public keeperRegistry;
    IRunnerRewarder public rewardTree;

    // First index of hash mapping which is not yet occupied by a hash. This index is where the next proposed hash will be stored to be voted upon.
    uint256 public firstEmptyHashIndex;

    // Mapping hashIndex => hash
    mapping(uint256 => bytes32) public hashChangeRequests;

    // Mapping of hash votes
    mapping(uint256 => uint256) public voteBitmaps;

    // The index of the hash which was approved most recently; i.e. the current hash. No hash older (i.e. proposed earlier) than the current hash may be accepted.
    uint256 public lastExecutedHashId;

    modifier onlyKeeper() {
        // This function reverts if msg.sender is not a keeper
        keeperRegistry.checkLicense(_msgSender());
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer() {}

    function initialize(
        address _keeperRegistry,
        address _RunnerRewarder
    ) public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
        rewardTree = IRunnerRewarder(_RunnerRewarder);
        keeperRegistry = KeeperRegistry(_keeperRegistry);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /**
     * @dev vote (if you are a keeper) on a given action proposal
     * @param _hashId is the hash of the action to be voted on
     * @param vote is the vote to be cast. false: reject, true: approve. false only has an effect if the keeper previously voted true. It resets their vote to false.
     */
    function voteOnHashChangeRequest(uint256 _hashId, bool vote) public {
        // Get voter keeper license, use to construct bitmap
        uint256 license = keeperRegistry.checkLicense(msg.sender);
        uint256 bitmap = 1 << license;
        if (vote) {
            // Add vote to bitmap through AND
            voteBitmaps[_hashId] |= bitmap;
        } else {
            // Remove vote from bitmap through XOR
            voteBitmaps[_hashId] ^= bitmap;
        }
    }

    /**
     * @dev Returns true if an action with given `actionId` is approved by all existing members of the group.
     * It’s up to the contract creators to decide if this method should look at majority votes (based on ownership)
     * or if it should ask consent of all the users irrespective of their ownerships.
     */
    function actionApprovalStatus(uint256 _hash) public view returns (bool) {
        uint256 maxLicenseId = keeperRegistry.maxNumKeepers() + 1;
        uint256 yesVotes;
        uint256 voteDifference;
        uint256 voteBitmap = voteBitmaps[_hash];
        for (uint256 i = 1; i != maxLicenseId; ++i) {
            voteDifference = 1 << i;

            if (voteBitmap & voteDifference == voteDifference) {
                ++yesVotes;
            }
        }

        uint256 numKeepers = keeperRegistry.currentNumKeepers();
        // If there happen to be no keepers, div by zero error will happen here, preventing actions from being executed.
        if ((yesVotes * 100) / numKeepers >= actionThresholdPercent) {
            return true;
        } else return (false);
    }

    /**
     * @dev Creates a proposal to change the reward merkle tree hash to a new hash.
     * @param _hash The new proposed merkle root hash
     */
    function createHashChangeRequest(
        bytes32 _hash
    ) external onlyKeeper returns (uint256) {
        // Cache current hashId
        uint256 hashId = firstEmptyHashIndex;

        // Store proposed hash in hashChangeRequests
        hashChangeRequests[hashId] = _hash;

        // Vote for the hash change request
        voteOnHashChangeRequest(hashId, true);

        // Increment the first empty hash index
        firstEmptyHashIndex = hashId + 1;

        // Return hashId of the new hash change request
        return hashId;
    }

    /**
     * @dev Use this function to execute a hash change request/propsal.
     * @param _hashId is the ID of the hash change request.
     * @return newState the state of the hash change request.
     */
    function executeHashChangeRequest(
        uint256 _hashId
    ) external onlyKeeper returns (State newState) {
        //Require that we're not reverting to a previous hash. Technically the 0th hash can be executed multiple times
        // (if another hasn't been approved since) which isn't really a security concern--all it does is emit a useless event.
        require(
            _hashId > lastExecutedHashId || lastExecutedHashId == 0,
            "HashId should be greater than lastExecutedHashId"
        );

        bool actionApproved = actionApprovalStatus(_hashId);
        if (actionApproved) {
            // If hash is approved
            // This hash is now the most recent hash, so older hashes are rendered invalid
            lastExecutedHashId = _hashId;

            // Set reward merkle tree to new hash
            bytes32 newHash = hashChangeRequests[_hashId];
            emit ExecutedHashChangeRequest(_hashId, newHash);
            rewardTree.changeMerkleRootHash(newHash);
            return State.COMPLETED;
        } else revert("Votes lacking; state still pending");
    }
}
