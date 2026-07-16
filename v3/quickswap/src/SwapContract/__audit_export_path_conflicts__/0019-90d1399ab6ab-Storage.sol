pragma solidity =0.8.4;

import "../../node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../../node_modules/@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../node_modules/@openzeppelin/contracts/access/AccessControl.sol";
import "../../node_modules/@openzeppelin/contracts/security/Pausable.sol";
import "../libraries/ECDSAOffsetRecovery.sol";
import "../libraries/FullMath.sol";

abstract contract Storage is AccessControl, Pausable, ECDSAOffsetRecovery {
    bytes32 public constant OWNER_ROLE = keccak256("OWNER_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant RELAYER_ROLE = keccak256("RELAYER_ROLE");
    bytes32 public constant VALIDATOR_ROLE = keccak256("VALIDATOR_ROLE");

    uint128 public numOfThisBlockchain;
    address public blockchainRouter;
    mapping(uint256 => bytes32) public RubicAddresses;
    mapping(uint256 => bool) public existingOtherBlockchain;
    mapping(uint256 => uint256) public feeAmountOfBlockchain;
    mapping(uint256 => uint256) public blockchainCryptoFee;

    uint256 public constant SIGNATURE_LENGTH = 65;

    mapping(bytes32 => uint256) public processedTransactions;
    uint256 public minConfirmationSignatures = 3;

    uint256 public minTokenAmount;
    uint256 public maxTokenAmount;
    uint256 public maxGasPrice;
    uint256 public minConfirmationBlocks;

    uint256 public accTokenFee = 1;
}
