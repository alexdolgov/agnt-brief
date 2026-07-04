// SPDX-License-Identifier: MIT

pragma solidity 0.8.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import './helpers/ReentrancyGuard.sol';

interface IMasterChef {
    function mintRewards(address _receiver, uint256 _amount) external;
}

import "../interfaces/IBlast.sol";

contract xSBF is ERC20("xSwapBlast Finance Token", "xSBF"), Ownable, ReentrancyGuard { 
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    IUniswapV2Pair public uniswapV2Pair;

    uint256 public constant PRECISION = 100;
    bool public optionEnabled = true;
    address public weth;
    address public sbfToken;
    uint256 public rewardRate;
    address public masterChef;
    address public _operator;
    uint256 public exitRatio = 30; // get 30% liquid
    uint256 public exitRatioBond = 150; // 1.5x

    address public constant BLAST_CONTRACT = 0x4300000000000000000000000000000000000002;
    IERC20Rebasing public constant USDB = IERC20Rebasing(0x4300000000000000000000000000000000000003);
    IERC20Rebasing public constant WETH = IERC20Rebasing(0x4300000000000000000000000000000000000004);

    mapping(address => bool) public minters;

    constructor(IUniswapV2Pair _uniswapV2Pair, address _weth, address _sbfToken) {
        _operator = msg.sender;
        uniswapV2Pair = _uniswapV2Pair;
        weth = _weth;
        sbfToken = _sbfToken;
        IBlast(BLAST_CONTRACT).configureClaimableYield();
        IBlast(BLAST_CONTRACT).configureClaimableGas(); 
        IBlast(BLAST_CONTRACT).configureGovernor(msg.sender);
        USDB.configure(IERC20Rebasing.YieldMode.CLAIMABLE); //configure claimable yield for USDB
        WETH.configure(IERC20Rebasing.YieldMode.CLAIMABLE); //configure claimable yield for WETH
    }

    modifier onlyMinter() {
        require(minters[msg.sender] == true, "Only minters allowed");
        _;
    }

    modifier onlyMasterChef() {
        require(msg.sender == masterChef, "Caller is not MasterChef contract");
        _;
    }

    modifier onlyOperator() {
        require(_operator == msg.sender, "operator: caller is not the operator");
        _;
    }

    struct vestPosition {
        uint256 totalVested;
        uint256 lastInteractionTime;
        uint256 VestPeriod;
    }

    mapping (address => vestPosition[]) public userInfo;
    mapping (address => uint256) public userPositions;

    uint256 public vestingPeriod = 60 days;
    uint256 public bondVestingPeriod = 150 days;

    function mint(address recipient_, uint256 amount_) external onlyMinter returns (bool) {
        _mint(recipient_, amount_);
        return true;
    }

    function burn(uint256 _amount) external  {
        _burn(msg.sender, _amount);
    }

    function remainTime(address _address, uint256 id) public view returns(uint256) {
        uint256 timePass = block.timestamp.sub(userInfo[_address][id].lastInteractionTime);
        uint256 remain;
        if (timePass >= userInfo[msg.sender][id].VestPeriod){
            remain = 0;
        }
        else {
            remain = userInfo[msg.sender][id].VestPeriod- timePass;
        }
        return remain;
    }


    function vest(uint256 _amount) external nonReentrant {

        require(this.balanceOf(msg.sender) >= _amount, "xSBF balance too low");

        userInfo[msg.sender].push(vestPosition({
            totalVested: _amount,
            lastInteractionTime: block.timestamp,
            VestPeriod: vestingPeriod
        }));

        userPositions[msg.sender] += 1; 
        _burn(msg.sender, _amount);
    }

    function vestBond(uint256 _amount) external nonReentrant {

        require(this.balanceOf(msg.sender) >= _amount, "xSBF balance too low");

        userInfo[msg.sender].push(vestPosition({
            totalVested: _amount.mul(exitRatioBond).div(100),
            lastInteractionTime: block.timestamp,
            VestPeriod: bondVestingPeriod
        }));
        
        userPositions[msg.sender] += 1; 
        _burn(msg.sender, _amount);
    }

    /**
     * @dev exit instantly with a penalty
     * @param _amount amount of xSBF to exit
     * @param maxPayAmount maximum amount of eth user is willing to pay
     */
    function instantExit(
        uint256 _amount,
        uint256 maxPayAmount
    ) external nonReentrant {
        require(_amount > 0, "xSBF: Amount must be greater than 0");
        uint256 exitAmount = ((exitRatio * _amount) / PRECISION);

        _burn(msg.sender, _amount);

        uint256 amountToPay = (_amount * (100 - exitRatio)) / 100;
        amountToPay = (getSBFCurrentPrice() * amountToPay) / 1e18;
        require(amountToPay <= maxPayAmount, "Slippage!");

        IERC20(weth).transferFrom(
            msg.sender,
            _operator,
            amountToPay
        );
        exitAmount = _amount;

        IMasterChef(masterChef).mintRewards(msg.sender, exitAmount);
    }


    function quotePayment(
        uint256 amount
    ) public view returns (uint256 payAmount) {
        uint256 amountToPay = (amount * (100 - exitRatio)) / 100;
        payAmount = (getSBFCurrentPrice() * amountToPay) / 1e18;
    }

    function getSBFCurrentPrice() public view returns (uint256) {
        // Get reserves of token0 and token1
        (uint256 reserve0, uint256 reserve1, ) = uniswapV2Pair.getReserves();

        // Assume token0 is the ERC-20 token you are interested in
        address token0 = sbfToken;

        if (token0 == uniswapV2Pair.token1()) {
            return reserve0 * (10**18) / reserve1;
        } else {
            return reserve1 * (10**18) / reserve0;
        }
    }

    function claim(uint256 id) external nonReentrant {
        require(remainTime(msg.sender, id) == 0, "vesting not end");
        vestPosition storage position = userInfo[msg.sender][id];
        uint256 claimAmount = position.totalVested;
        position.totalVested = 0;
        IMasterChef(masterChef).mintRewards(msg.sender, claimAmount);
    }

    function setRewardRate(uint256 _rewardRate) public onlyMasterChef {
        rewardRate = _rewardRate;
    }

    function setMasterChef(address _masterChef) public onlyOwner {
        masterChef = _masterChef;
    }

    function transferOperator(address newOperator_) public onlyOwner {
        _transferOperator(newOperator_);
    }

    function setExitRatio(uint256 _exitRatio, uint256 _exitRatioBond) public onlyOwner {
        require(_exitRatio <= 95, "Cant be more than 80");
        require(_exitRatio >= 5, "Cant be less than 20");
        require(_exitRatioBond <= 500, "Cant be more than 500");
        require(_exitRatioBond >= 100, "Cant be less than 100");
        exitRatio = _exitRatio;
        exitRatioBond = _exitRatioBond;
    }

    function _transferOperator(address newOperator_) internal {
        require(newOperator_ != address(0), "operator: zero address given for new operator");
        _operator = newOperator_;
    }

    function setMinters(address _minter, bool _canMint) public onlyOperator {
        minters[_minter] = _canMint;
    }

    /*********************** BLAST RELATED ***********************/

    function configureYieldModeTokens(IERC20Rebasing.YieldMode _weth, IERC20Rebasing.YieldMode _usdb) external onlyOwner {
		USDB.configure(_usdb); //configure claimable yield for USDB
        WETH.configure(_weth); //configure claimable yield for WETH
    }

    function claimYieldTokens(address recipient, uint256 amount) external onlyOwner {
        USDB.claim(recipient, amount); //configure claimable yield for USDB
        WETH.claim(recipient, amount); //configure claimable yield for WETH
    }

    function claimYield(address recipient, uint256 amount) external onlyOwner {
		IBlast(BLAST_CONTRACT).claimYield(address(this), recipient, amount);
    }

	function claimAllYield(address recipient) external onlyOwner {
		IBlast(BLAST_CONTRACT).claimAllYield(address(this), recipient);
    }

    function claimMyContractsGas() external onlyOwner {
        IBlast(BLAST_CONTRACT).claimAllGas(address(this), msg.sender);
    }

}
