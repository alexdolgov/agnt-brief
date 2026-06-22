// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
 
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
 
contract CitadelPrivateSale is Ownable, ReentrancyGuard {
    IERC20 public immutable fort;
    IERC20 public immutable esFort;
    uint256 public immutable fortToSell;
    uint256 public immutable esFortToSell;
    uint256 public immutable saleStart;
    uint256 public immutable saleEnd;
    uint256 public claimDate;
    uint256 public totalCommitments;
    uint256 public immutable maxInvestment = 5 * 1e16 wei;
    uint256 public immutable saleTarget = 1 * 1e17 wei;
    mapping(address => uint256) public investments;
    mapping(address => bool) public whitelisted;
 
    event Invested(address investor, uint256 amount);
    event Claimed(address investor, uint256 amountFort, uint256 amountEsFort);
 
    modifier onlyWhitelisted() {
        require(whitelisted[msg.sender], "Not whitelisted");
        _;
    }
 
    modifier saleActive() {
        require(
            block.timestamp >= saleStart && block.timestamp <= saleEnd,
            "Sale not active"
        );
        _;
    }
 
    modifier afterClaimDate() {
        require(block.timestamp >= claimDate, "Claiming not allowed yet");
        _;
    }
 
    constructor(
        address _fort,
        address _esFort,
        uint256 _fortToSell,
        uint256 _esFortToSell,
        uint256 _saleStart,
        uint256 _saleEnd,
        uint256 _claimDate
    ) Ownable(msg.sender) {
        require(_saleStart < _saleEnd, "Sale start must be before sale end");
        require(_saleEnd < _claimDate, "Claim date must be after sale end");
        fort = IERC20(_fort);
        esFort = IERC20(_esFort);
        fortToSell = _fortToSell;
        esFortToSell = _esFortToSell;
        saleStart = _saleStart;
        saleEnd = _saleEnd;
        claimDate = _claimDate;
    }
 
    function whitelistAddress(address _address) external onlyOwner {
        whitelisted[_address] = true;
    }
 
    function whitelistAddresses(
        address[] calldata _addresses
    ) external onlyOwner {
        for (uint256 i = 0; i < _addresses.length; i++) {
            whitelisted[_addresses[i]] = true;
        }
    }
 
    function loadTokens() external onlyOwner {
        require(
            fort.transferFrom(msg.sender, address(this), fortToSell),
            "Token transfer failed"
        );
        require(
            esFort.transferFrom(msg.sender, address(this), esFortToSell),
            "Token transfer failed"
        );
    }
 
    function invest() external payable onlyWhitelisted saleActive nonReentrant {
        require(
            investments[msg.sender] + msg.value <= maxInvestment,
            "Total investment exceeds max allowance"
        );
        require(
            totalCommitments + msg.value <= saleTarget,
            "Sale target reached"
        );
 
        totalCommitments += msg.value;
        investments[msg.sender] += msg.value;
        emit Invested(msg.sender, msg.value);
    }
 
    function claimTokens() external afterClaimDate nonReentrant {
        require(investments[msg.sender] > 0, "No investment to claim");
 
        uint256 fortAmount = calculateFortAmount(investments[msg.sender]);
        uint256 esFortAmount = calculateEsFortAmount(investments[msg.sender]);
        investments[msg.sender] = 0; // Prevent re-claiming
        require(fort.transfer(msg.sender, fortAmount));
        require(esFort.transfer(msg.sender, esFortAmount));
        emit Claimed(msg.sender, fortAmount, esFortAmount);
    }
 
    function calculateFortAmount(
        uint256 investment
    ) public view returns (uint256) {
        uint256 fortPerEth = fortToSell / saleTarget;
        return investment * fortPerEth;
    }
 
    function calculateEsFortAmount(
        uint256 investment
    ) public view returns (uint256) {
        uint256 esFortPerEth = esFortToSell / saleTarget;
        return investment * esFortPerEth;
    }
 
    // In case any adjustments are needed or in an emergency
    function setClaimDate(uint256 newClaimDate) external onlyOwner {
        require(newClaimDate > saleEnd, "Claim date must be after sale end");
        claimDate = newClaimDate;
    }
 
    function withdrawFunds() external onlyOwner {
        require(block.timestamp > saleEnd, "Sale not ended");
        payable(owner()).transfer(address(this).balance);
    }
 
    // Allow owner to possibly recover unsold tokens after the sale is over
    function recoverTokens(
        address to,
        uint256 amountFort,
        uint256 amountEsFort
    ) external onlyOwner {
        require(
            block.timestamp > claimDate,
            "Cannot recover before claim date"
        );
        fort.transfer(to, amountFort);
        esFort.transfer(to, amountEsFort);
    }
}