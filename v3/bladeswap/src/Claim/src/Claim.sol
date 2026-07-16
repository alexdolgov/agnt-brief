import "openzeppelin/utils/cryptography/MerkleProof.sol";
import "openzeppelin/token/ERC20/IERC20.sol";
import "openzeppelin/token/ERC20/utils/SafeERC20.sol";

contract Claim {
    using SafeERC20 for IERC20;
    bytes32 public root;
    address public owner;

    constructor() {owner = msg.sender;}

    mapping(address => bool) public claimed1;
    mapping(address => bool) public claimed2;

    function setRoot(bytes32 h) external {
        require(root == bytes32(0));
        require(msg.sender == owner);
        root = h;
    }

    function claim(
        bytes32[] memory proof,
        uint256 amount1,
        uint256 amount2
    ) public {
        require (root != bytes32(0));
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, amount1, amount2))));
        require(MerkleProof.verify(proof, root, leaf), "Invalid proof");

        if (amount1 > 0 && !claimed1[msg.sender]) {
            claimed1[msg.sender] = true;
            IERC20(0xF8f2ab7C84CDB6CCaF1F699eB54Ba30C36B95d85).safeTransfer(msg.sender, amount1);
        }
        if (amount2 > 0 && block.timestamp >= 1716616800 && !claimed2[msg.sender]) {
            claimed2[msg.sender] = true;
            IERC20(0xF8f2ab7C84CDB6CCaF1F699eB54Ba30C36B95d85).safeTransfer(msg.sender, amount2);
        }
    }
}

