import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


contract Refund is Ownable, ReentrancyGuard {
    event Claim(address indexed receiver);
    using SafeERC20 for IERC20;

    bytes32 public immutable root;
    address public immutable vault;

    constructor(address vault_, bytes32 root_) {
        vault = vault_;
        root = root_;
    }
    
    mapping(address => address) public altAddress;
    mapping(address => bool) public claimed;

    function claim(
        bytes32[] memory proof,
        address receiver,
        address[] memory tokens,
        uint256[] memory amounts
    ) public nonReentrant {
        require(
            receiver == msg.sender || altAddress[receiver] == msg.sender
        );
        require(tokens.length == amounts.length);
        require(!claimed[receiver], "already claimed");
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(receiver, tokens, amounts)))
        );
        require(MerkleProof.verify(proof, root, leaf), "Invalid proof");
        claimed[receiver] = true;
        emit Claim(receiver);
        for (uint256 i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).safeTransferFrom(vault, msg.sender, amounts[i]);
        }
    }

    function setAltAddress(address a, address b) external onlyOwner {
        altAddress[a] = b;
    }

}
