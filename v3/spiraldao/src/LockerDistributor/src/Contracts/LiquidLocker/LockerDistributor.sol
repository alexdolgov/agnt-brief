pragma solidity 0.8.16;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {BitMaps} from "@openzeppelin/contracts/utils/structs/BitMaps.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

interface ILockerDistributor {
    struct MerkleDistribution {
        bytes32 root;
        address token;
        uint128 amount;
        uint64 startTime;
        uint64 endTime;
    }

    event MerkleNotified(bytes32 indexed root);

    error InsufficientPermission();
    error AlreadyClaimed();
    error NonUniqueId();
    error InvalidRoot();
    error InvalidProof();
    error InvalidTime();

    event DistributionClaimed(address indexed user, address token, uint256 amount);
    event UnwantedClaimed(bytes32 distributionRoot);
}

contract LockerDistributor is ILockerDistributor {
    using SafeERC20 for IERC20;
    using BitMaps for BitMaps.BitMap;
    using SafeCast for uint256;

    bytes32[] public rootList;
    mapping(bytes32 => MerkleDistribution) private distributionInfo;
    mapping(bytes32 => BitMaps.BitMap) private claimedAtDistribution;

    address public gov;

    constructor() {
        gov = msg.sender;
    }

    modifier onlyGov() {
        if (msg.sender != gov) revert InsufficientPermission();
        _;
    }

    function setGovernance(address gov_) external onlyGov {
        require(gov_ != address(0));
        gov = gov_;
    }

    function rootListLength() external view returns (uint256) {
        return rootList.length;
    }

    function hasClaimed(bytes32 distributionRoot, address user) external view returns(bool){
        if (distributionInfo[distributionRoot].root == bytes32(0)) revert InvalidRoot();
        BitMaps.BitMap storage bm = claimedAtDistribution[distributionRoot];
        return bm.get(uint256(uint160(user)));
    }

    function claimDistribution(bytes32 distributionRoot, uint256 amount, bytes32[] calldata _proof)
        external
    {
        BitMaps.BitMap storage bm = claimedAtDistribution[distributionRoot];
        if (bm.get(uint256(uint160(msg.sender)))) revert AlreadyClaimed();

        MerkleDistribution memory d = distributionInfo[distributionRoot];

        if (d.root == bytes32(0)) revert InvalidRoot();
        if (block.timestamp < d.startTime || block.timestamp > d.endTime) revert InvalidTime();

        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, amount));
        if (!MerkleProof.verify(_proof, d.root, leaf)) revert InvalidProof();
        bm.set(uint256(uint160(msg.sender)));

        IERC20(d.token).safeTransfer(msg.sender, amount);
        distributionInfo[distributionRoot].amount = d.amount - amount.toUint128();

        emit DistributionClaimed(msg.sender, d.token, amount);
    }

    function notifyMerkleDistribution(bytes32 root, uint64 startTime, uint64 endTime, address token, uint256 amount)
        external onlyGov
    {
        require(amount > 0);
        require(endTime > block.timestamp || endTime == 0);
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        bytes32 distributionRoot = root;
        rootList.push(distributionRoot);
        if (distributionInfo[distributionRoot].root != bytes32(0)) revert NonUniqueId();
        distributionInfo[distributionRoot] = MerkleDistribution(
            root,
            token,
            amount.toUint128(),
            startTime == 0 ? block.timestamp.toUint64() : startTime,
            endTime == 0 ? type(uint64).max : endTime
        );
        emit MerkleNotified(root);
    }

    function claimUnwanted(bytes32 distributionRoot) external onlyGov {
        MerkleDistribution memory d = distributionInfo[distributionRoot];
        if (d.endTime > block.timestamp && d.endTime != type(uint64).max) revert InvalidTime();
        distributionInfo[distributionRoot].amount = 0;
        IERC20(d.token).safeTransfer(gov, d.amount);

        emit UnwantedClaimed(distributionRoot);
    }
}
