import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


contract Liquidation is Ownable, ReentrancyGuard {
    event Claim(address indexed receiver);
    using SafeERC20 for IERC20;

    IERC20 public immutable token;
    bytes32 public immutable root;
    address public immutable vault;

    constructor(address vault_, IERC20 token_, bytes32 root_) {
        vault = vault_;
        root = root_;
        token = token_;
    }
    
    mapping(address => address) public altAddress;
    mapping(address => bool) public claimed;

    function claim(
        bytes32[] memory proof,
        address receiver,
        uint256 amount
    ) public nonReentrant {
        require(
            receiver == msg.sender || altAddress[receiver] == msg.sender
        );
        require(!claimed[receiver], "already claimed");
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(receiver, amount)))
        );
        require(MerkleProof.verify(proof, root, leaf), "Invalid proof");
        claimed[receiver] = true;
        emit Claim(receiver);
        token.safeTransferFrom(vault, msg.sender, amount);
    }

    function setAltAddress(address a, address b) external onlyOwner {
        altAddress[a] = b;
    }

}
