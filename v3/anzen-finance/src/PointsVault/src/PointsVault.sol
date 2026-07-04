pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PointsVault is ERC721, Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable usdz;
    uint256 private _nextTokenId;
    uint256 public maxTotalDeposits;
    uint256 public totalDeposits;

    struct Deposit {
        uint256 amount;
        uint256 initialDepositTimestamp;
        uint256 latestDepositTimestamp;
    }

    mapping(uint256 => Deposit) public deposits;
    mapping(address => uint256) public userTokenIds;

    event DepositMade(address indexed user, uint256 indexed tokenId, uint256 amount);
    event OwnerWithdraw(address indexed owner, uint256 amount);

    constructor(address _usdz, uint256 _initialMaxTotalDeposits) ERC721("Anzen Points Vault Position", "AnzPVP") Ownable(msg.sender) {
        usdz = IERC20(_usdz);
        maxTotalDeposits = _initialMaxTotalDeposits;
    }

    function deposit(uint256 _amount) external {
        require(_amount > 0, "Amount must be greater than 0");
        require(totalDeposits + _amount <= maxTotalDeposits, "Deposit would exceed max total deposits");

        usdz.safeTransferFrom(msg.sender, address(this), _amount);
        totalDeposits += _amount;

        uint256 tokenId = userTokenIds[msg.sender];
        if (tokenId == 0) {
            tokenId = ++_nextTokenId;
            _safeMint(msg.sender, tokenId);
            userTokenIds[msg.sender] = tokenId;
            deposits[tokenId].initialDepositTimestamp = block.timestamp;
        }

        deposits[tokenId].amount += _amount;
        deposits[tokenId].latestDepositTimestamp = block.timestamp;

        emit DepositMade(msg.sender, tokenId, _amount);
    }

    function ownerWithdraw(uint256 _amount) external onlyOwner {
        require(_amount > 0, "Amount must be greater than 0");
        require(_amount <= usdz.balanceOf(address(this)), "Insufficient balance");
        usdz.safeTransfer(owner(), _amount);
        emit OwnerWithdraw(owner(), _amount);
    }

    function setMaxTotalDeposits(uint256 _newMaxTotalDeposits) external onlyOwner {
        require(_newMaxTotalDeposits >= totalDeposits, "New max cannot be less than current total deposits");
        maxTotalDeposits = _newMaxTotalDeposits;
    }

    function getBalance() external view returns (uint256) {
        return usdz.balanceOf(address(this));
    }

    function getDepositInfo(uint256 _tokenId) external view returns (Deposit memory) {
        require(_ownerOf(_tokenId) != address(0), "Token does not exist");
        return deposits[_tokenId];
    }

    function getUserTokenId(address _user) external view returns (uint256) {
        return userTokenIds[_user];
    }

    function rescueERC20(address tokenAddress, uint256 amount) external onlyOwner {
        require(tokenAddress != address(usdz), "Cannot rescue USDZ tokens");
        IERC20(tokenAddress).safeTransfer(owner(), amount);
    }
}
