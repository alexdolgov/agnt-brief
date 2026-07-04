pragma solidity >=0.8.19;

import { ISablierV2LockupLinear } from "@sablier/v2-core/src/interfaces/ISablierV2LockupLinear.sol";
import { LockupLinear, Lockup } from "@sablier/v2-core/src/types/DataTypes.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

/**
 * @title XaveVesting
 * @author Xave
 * @dev `XaveVesting` contract is a contract for allowing eligible users to vest XAV tokens using Sablier's LockupLinear
 * contract. The contract is initialized with the Sablier contract address, the XAV token address, and the merkle root
 * of
 * the eligible recipients. The contract owner can deposit XAV tokens to the contract, and eligible users can start
 * vesting
 * their tokens using the `startVesting` function. The contract owner can also withdraw the XAV tokens from the
 * contract. Additional functions for sablier view can be invoked directly in Sablier's core contracts using the mapping
 * `vestingStream` to get the streamId for a specific wallet.
 */
contract XaveVesting is Ownable {
    ISablierV2LockupLinear public immutable SABLIER;
    IERC20 public immutable XAV_TOKEN;
    bytes32 public immutable RECIPIENTS_MERKLE_ROOT;
    uint40 public immutable CLIFF;
    uint40 public immutable TOTAL_TIME;
    address public immutable STREAM_SENDER;

    // user wallet to streamId mapping
    mapping(address wallet => uint256 streamId) public vestingStream;

    event SetAllocation(address[] wallet, uint256[] amount, uint256 timestamp);
    event XAVDeposited(address admin, uint256 amount);
    event XAVWithdrawn(address admin, uint256 amount);
    event VestingStarted(address wallet, uint256 streamId, uint256 totalAmount, uint256 startTime, uint256 endTime);

    constructor(
        address xavToken,
        bytes32 _recipientsMerkleRoot,
        address _streamSender,
        address _sablier,
        uint40 _total,
        uint40 _cliff
    ) {
        SABLIER = ISablierV2LockupLinear(_sablier);
        XAV_TOKEN = IERC20(xavToken);
        RECIPIENTS_MERKLE_ROOT = _recipientsMerkleRoot;
        STREAM_SENDER = _streamSender;
        CLIFF = _cliff;
        TOTAL_TIME = _total;
    }

    modifier senderIsEligible(uint256 amount, bytes32[] calldata merkleProof) {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, amount))));
        require(MerkleProof.verify(merkleProof, RECIPIENTS_MERKLE_ROOT, leaf), "XaveVesting: Invalid proof.");
        _;
    }

    function depositXAV(uint256 amount) external onlyOwner {
        XAV_TOKEN.transferFrom(msg.sender, address(this), amount);

        // since this is a deposit function, we need to increase the allowance rather than `approve`
        IERC20IncreaseAllowance(address(XAV_TOKEN)).increaseAllowance(address(SABLIER), amount);

        emit XAVDeposited(msg.sender, amount);
    }

    function startVesting(
        uint256 amount,
        bytes32[] calldata merkleProof
    )
        external
        senderIsEligible(amount, merkleProof)
        returns (uint256 streamId)
    {
        // streamId is never 0, so we can use it as a flag to check if the user has already vested
        require(vestingStream[msg.sender] == 0, "XaveVesting: User already vested.");

        LockupLinear.CreateWithDurations memory params;
        params.sender = STREAM_SENDER; // The sender will be able to cancel the stream
        params.recipient = msg.sender; // The recipient of the streamed assets
        params.totalAmount = uint128(amount); // Total amount is the amount inclusive of all fees
        params.asset = XAV_TOKEN; // The streaming asset
        params.cancelable = true; // Whether the stream will be cancelable or not
        params.transferable = true; // Whether the stream will be transferable or not
        params.durations = LockupLinear.Durations({ cliff: CLIFF, total: TOTAL_TIME });
        // params.broker = Broker(address(0), ud60x18(0)); // Optional parameter for charging a fee

        streamId = SABLIER.createWithDurations(params);

        vestingStream[msg.sender] = streamId;

        emit VestingStarted(msg.sender, streamId, amount, block.timestamp, block.timestamp + TOTAL_TIME);

        return streamId;
    }

    function withdrawXAV() external onlyOwner {
        XAV_TOKEN.transfer(msg.sender, XAV_TOKEN.balanceOf(address(this)));
        // reset Sablier's allowance to 0
        XAV_TOKEN.approve(address(SABLIER), 0);

        emit XAVWithdrawn(msg.sender, XAV_TOKEN.balanceOf(msg.sender));
    }

    function getStreamDetails(address wallet) external view returns (LockupLinear.Stream memory) {
        return SABLIER.getStream(vestingStream[wallet]);
    }

    function walletHasVested(address wallet) external view returns (bool) {
        uint256 streamId = vestingStream[wallet];
        require(streamId != 0, "XaveVesting: has no active vesting");

        return SABLIER.statusOf(streamId) == Lockup.Status.DEPLETED;
    }
}

interface IERC20IncreaseAllowance {
    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);
}
