// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import "./libraries/Int256Utils.sol";
import "./interfaces/IAirdrop.sol";

contract Airdrop is IAirdrop, ReentrancyGuard, Ownable, Pausable, Initializable {
    using SafeERC20 for IERC20;
    using Int256Utils for uint256;

    address public immutable MYX;

    uint256 public endTime;
    uint256 public phaseNumber;
    mapping(uint8 => PeriodInfo) public periodInfos;
    mapping(uint8 => mapping(address => bool)) public claimState;

    constructor(address _myx, address _owner) Ownable(_owner) {
        MYX = _myx;
        _pause();
    }

    function initialize(
        uint256[] memory _phases,
        PeriodInfo[] memory _periodInfos,
        bytes32[][] calldata _baseProofs
    ) public onlyOwner initializer {
        require(_phases.length == _periodInfos.length && _phases.length >= 0, "ip");
        phaseNumber = _phases.length;
        endTime = _periodInfos[_periodInfos.length - 1].expireTime;
        _unpause();

        for (uint256 i = 0; i < _periodInfos.length; i++) {
            PeriodInfo memory periodInfo = _periodInfos[i];
            require(periodInfo.releaseTime < periodInfo.expireTime, "Invalid time range.");
            require(_verify(address(0), periodInfo.totalAmount, periodInfo.merkleRoot, _baseProofs[i]),
                "The merkle tree verify error.");

            periodInfos[uint8(_phases[i])] = periodInfo;
        }
    }

    function togglePauseState() external onlyOwner {
        if (paused()) {
            _unpause();
        } else {
            _pause();
        }
    }

    function batchClaimToken(
        uint8[] memory phases,
        uint256[] memory amounts,
        bytes32[][] calldata merkleProofs
    ) external nonReentrant whenNotPaused {
        require(amounts.length == phases.length
            && phases.length == merkleProofs.length
            && phases.length > 0, "ip");

        for (uint256 i = 0; i < phases.length; i++) {
            _claimToken(phases[i], amounts[i], merkleProofs[i]);
        }
    }

    function _claimToken(
        uint8 phase,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) internal {
        PeriodInfo storage periodInfo = periodInfos[phase];
        require(isValid(phase), "The phase is out of validity.");
        require(!_isClaimed(phase, msg.sender), "You have already claimed the phase.");
        require(amount <= periodInfo.totalAmount - periodInfo.claimedAmount, "Invalid amount.");
        require(_verify(msg.sender, amount, periodInfo.merkleRoot, merkleProof), "The Merkle tree verification failed.");

        periodInfo.claimedAmount += amount;
        claimState[phase][msg.sender] = true;

        IERC20(MYX).safeTransfer(msg.sender, amount);

        emit Airdropped(phase, MYX, amount, msg.sender);
    }

    function refundToken(
        uint8[] memory phases,
        address receiver
    ) external nonReentrant onlyOwner{
        require(receiver != address(0), "Invalid receiver.");
        for (uint256 i = 0; i < phases.length; i++) {
            _refundToken(phases[i], receiver);
        }
    }

    function _refundToken(
        uint8 phase,
        address receiver
    ) internal {
        PeriodInfo storage periodInfo = periodInfos[phase];
        require(isExpired(phase), "The phase is not expired.");
        require(!_isClaimed(phase, address(0)), "The phase has been refunded.");

        uint256 amount = periodInfo.totalAmount - periodInfo.claimedAmount;

        periodInfo.claimedAmount += amount;
        claimState[phase][address(0)] = true;

        IERC20(MYX).safeTransfer(receiver, amount);

        emit AirdropRefunded(phase, MYX, amount, owner(), receiver);
    }

    function rescueTokens(
        address token,
        address receiver,
        uint256 amount
    ) external onlyOwner {
        require(block.timestamp >= endTime, "The airdrop isn't over yet.");
        require(receiver != address(0), "Invalid recipient address");
        IERC20 erc20 = IERC20(token);
        uint256 balance = erc20.balanceOf(address(this));
        require(amount <= balance, "Insufficient token balance in contract");

        erc20.safeTransfer(receiver, amount);
    }

    function _verify(
        address sender,
        uint256 amount,
        bytes32 merkleRoot,
        bytes32[] calldata merkleProof
    ) private pure returns (bool canClaim) {
        bytes32 node = keccak256(abi.encodePacked(sender, amount));
        canClaim = MerkleProof.verify(merkleProof, merkleRoot, node);
    }

    function _isClaimed(uint8 phase, address account) private view returns (bool) {
        return claimState[phase][account];
    }

    function isValid(uint8 phase) public view returns (bool){
        bool release = block.timestamp > periodInfos[phase].releaseTime;
        return release && !isExpired(phase);
    }

    function isExpired(uint8 phase) public view returns (bool){
        return block.timestamp > periodInfos[phase].expireTime;
    }

    function unClaimedAmount(uint8 phase) public view returns (uint256) {
        PeriodInfo memory periodInfo = periodInfos[phase];
        return periodInfo.totalAmount - periodInfo.claimedAmount;
    }

    function getPeriodInfo(uint8 phase) public view returns (PeriodInfo memory) {
        return periodInfos[phase];
    }
}