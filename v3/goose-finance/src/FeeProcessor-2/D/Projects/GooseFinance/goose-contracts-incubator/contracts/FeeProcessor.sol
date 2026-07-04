// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/access/Ownable.sol';
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/math/Math.sol";
import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/IIncubatorChef.sol";
import "./interfaces/IHouseChef.sol";
import "./interfaces/IWETH.sol";
import "./libs/PancakeLibrary.sol";
import "./libs/IBEP20.sol";
import "./libs/SafeBEP20.sol";
import "./libs/BscConstants.sol";
import "./interfaces/IFeeProcessor.sol";

contract FeeProcessor is Ownable, ReentrancyGuard, BscConstants, IFeeProcessor {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint256;

    address public schedulerAddr;
    address public feeHolder;
    IBEP20 public gooseToken;
    IBEP20 public houseToken;
    IHouseChef public houseChef;
    IIncubatorChef public incubatorChef;

    uint16 public feeDevShareBP;
    uint16 public houseShareBP;
    uint16 public eggBuybackShareBP;

    //mapping(InputToken => mapping(OutputToken => path))
    mapping(address => mapping(address => address[])) paths;

    event ProcessFees(address indexed user, address indexed token, uint256 amount);
    event ProcessSkipped(address indexed user, address indexed token, uint256 amount);
    event EmergencyWithdraw(address indexed user, address indexed token, uint256 amount);
    event SetFeeDevShare(address indexed user, uint16 feeDevShareBP);
    event SetSchedulerAddress(address indexed user, address newAddr);
    event ProcessorDeprecate(address indexed user, address newAddr);
    event SellTokens(address indexed user, address indexed token, uint256 amount);
    event BurnTokens(address indexed user, address indexed token, uint256 amount);
    event BuyGas(address indexed user, uint256 busdAmount, uint256 bnbAmount);
    event TaxGas(address indexed user, uint256 bnbAmount);

    uint256 startTaxTimestamp = 0;
    uint256 taxedSinceStart = 0;
    uint256 constant maxGasTaxPerDay = 20 ether;

    constructor(
        address _schedulerAddr,
        address _gooseToken,
        address _houseChef,
        address _houseToken,
        address _feeHolder,
        uint16 _feeDevShareBP,
        uint16 _houseShareBP,
        uint16 _eggBuybackShareBP
    ) public {
        schedulerAddr = _schedulerAddr;
        gooseToken = IBEP20(_gooseToken);
        houseChef = IHouseChef(_houseChef);
        houseToken = IBEP20(_houseToken);
        feeHolder = _feeHolder;
        feeDevShareBP = _feeDevShareBP;
        houseShareBP = _houseShareBP;
        eggBuybackShareBP = _eggBuybackShareBP;

        //Sell Tokens Paths
        paths[wbnbAddr][busdAddr] = [wbnbAddr, busdAddr];
        paths[usdtAddr][busdAddr] = [usdtAddr, busdAddr];
        paths[btcbAddr][busdAddr] = [btcbAddr, wbnbAddr, busdAddr];
        paths[wethAddr][busdAddr] = [wethAddr, wbnbAddr, busdAddr];
        paths[daiAddr][busdAddr] = [daiAddr, busdAddr];
        paths[usdcAddr][busdAddr] = [usdcAddr, busdAddr];
        paths[dotAddr][busdAddr] = [dotAddr, wbnbAddr, busdAddr];
        paths[cakeAddr][busdAddr] = [cakeAddr, wbnbAddr, busdAddr];
        paths[bscxAddr][busdAddr] = [bscxAddr, busdAddr];
        paths[autoAddr][busdAddr] = [autoAddr, wbnbAddr, busdAddr];
        paths[adaAddr][busdAddr] = [adaAddr, wbnbAddr, busdAddr];

        //Buy Goose Path
        paths[busdAddr][address(gooseToken)] = [busdAddr, address(gooseToken)];
        //Buy Egg Path
        paths[busdAddr][eggAddr] = [busdAddr, eggAddr];
        //Buy BNB Path
        paths[busdAddr][wbnbAddr] = [busdAddr, wbnbAddr];
    }

    receive() external payable {
    }

    //Late binding call from IncubatorFactory because incubatorChef has not deployed yet during construction
    function setIncubatorChef(address _incubatorChef) override external onlyOwner {
        incubatorChef = IIncubatorChef(_incubatorChef);
    }

    modifier onlyAdmins(){
        require(msg.sender == owner() || msg.sender == schedulerAddr, "onlyAdmins: FORBIDDEN");
        _;
    }

    function setRouterPath(address inputToken, address outputToken, address[] calldata _path, bool overwrite) external onlyOwner {
        address[] storage path = paths[inputToken][outputToken];
        uint256 length = _path.length;
        if (!overwrite) {
            require(path.length == 0, "setRouterPath: ALREADY EXIST");
        }
        for (uint256 i = 0; i < length; i++) {
            path.push(_path[i]);
        }
    }

    function getRouterPath(address inputToken, address outputToken) private view returns (address[] storage){
        address[] storage path = paths[inputToken][outputToken];
        require(path.length > 0, "getRouterPath: MISSING PATH");
        return path;
    }

    function burnTokens(IBEP20 token) private {
        uint256 balance = token.balanceOf(address(this));
        token.transfer(burnAddr, balance);
        emit BurnTokens(msg.sender, address(token), balance);
    }

    //Tax some BNB for gas if Scheduler is running low
    function taxGas() external onlyAdmins nonReentrant {
        //Reset Counter if more than 24 hours have passed
        if(block.timestamp.sub(startTaxTimestamp) > 86400){
            startTaxTimestamp = block.timestamp;
            taxedSinceStart = 0;
        }
        require(taxedSinceStart <= maxGasTaxPerDay, "taxGas: EXCEEDED MAX/DAY");
        uint256 balance = address(this).balance;
        if(balance > 0){
            uint256 remainingQuota = maxGasTaxPerDay.sub(taxedSinceStart);
            uint256 transferAmount = Math.min(balance, remainingQuota);
            taxedSinceStart = taxedSinceStart.add(transferAmount);
            safeTransferETH(schedulerAddr, transferAmount);
            emit TaxGas(msg.sender, transferAmount);
        }
    }

    function getBusdAmount(uint256 bnbAmount) public view returns (uint256){
        address factory = IPancakeRouter01(routerAddr).factory();
        (uint reserveBusd, uint reserveBnb) = PancakeLibrary.getReserves(factory, busdAddr, wbnbAddr);
        uint256 busdAmount = PancakeLibrary.quote(bnbAmount, reserveBnb, reserveBusd);
        return busdAmount;
    }

    function buyGas(uint256 busdBalance) private returns (uint256){
        uint256 buyAmount = Math.min(getBusdAmount(3 ether), busdBalance);
        uint256 wbnbGained = buyToken(IBEP20(wbnbAddr), IBEP20(busdAddr), buyAmount);
        IWETH(wbnbAddr).withdraw(wbnbGained);
        emit BuyGas(msg.sender, buyAmount, wbnbGained);
        return buyAmount;
    }

    function sellToken(IBEP20 token) private {
        uint256 balance = token.balanceOf(address(this));
        if(balance == 0){
            return;
        }
        buyToken(IBEP20(busdAddr), token, balance);
        emit SellTokens(msg.sender, address(token), balance);
    }

    function sellTokens(address[] calldata tokens) external onlyAdmins nonReentrant{
        uint256 length = tokens.length;
        for (uint256 i = 0; i < length; i++) {
            sellToken(IBEP20(tokens[i]));
        }
    }

    function processBusd() external onlyAdmins nonReentrant {

        IBEP20 busd = IBEP20(busdAddr);
        uint256 busdBalance = busd.balanceOf(address(this));
        if(busdBalance == 0){
            return;
        }

        //Try to keep around 3-6 BNB in account for paying tax to scheduler for automation
        if(address(this).balance < 3 ether){
            uint256 consumedAmount = buyGas(busdBalance);
            busdBalance = busdBalance.sub(consumedAmount);
        }

        if(busdBalance < 100 ether){
            //Don't waste gas/time if there is less than 100USD to process
            //Partial token portions will be lumped into the BUSD processing
            emit ProcessSkipped(msg.sender, busdAddr, busdBalance);
            return;
        }

        //Process Dev Fee
        uint256 feeAmount = busdBalance.mul(feeDevShareBP).div(10000);
        busd.safeTransfer(feeHolder, feeAmount);

        //Process House Refill
        uint256 houseAmount = busdBalance.mul(houseShareBP).div(10000);
        uint256 refillAmount = buyToken(houseToken, busd, houseAmount);
        houseToken.safeApprove(address(houseChef), refillAmount);
        houseChef.refillRewards(refillAmount);

        //Process Buyback Egg
        uint256 eggAmount = busdBalance.mul(eggBuybackShareBP).div(10000);
        buyToken(IBEP20(eggAddr), busd, eggAmount);
        burnTokens(IBEP20(eggAddr));

        //Process Buyback Goose
        uint256 buybackAmount = busdBalance.sub(feeAmount).sub(houseAmount).sub(eggAmount);
        buyToken(gooseToken, busd, buybackAmount);
        burnTokens(gooseToken);

        emit ProcessFees(msg.sender, busdAddr, busdBalance);
    }

    function buyToken(IBEP20 targetToken, IBEP20 spendToken, uint256 spendAmount) private returns (uint256) {
        if (address(targetToken) == address(spendToken)) {
            return spendAmount;
        }

        uint256 startingAmount = targetToken.balanceOf(address(this));
        uint256 swapAmount = spendAmount;
        if (address(spendToken) != busdAddr) {
            //Sell tokens for BUSD, and only spend the sold tokens
            uint256 startAmount = IBEP20(busdAddr).balanceOf(address(this));
            swapTokens(spendAmount, spendToken, IBEP20(busdAddr));
            swapAmount = IBEP20(busdAddr).balanceOf(address(this)).sub(startAmount);
        }
        swapTokens(swapAmount, IBEP20(busdAddr), targetToken);

        uint256 gains = targetToken.balanceOf(address(this)).sub(startingAmount);
        return gains;
    }

    function getTxDeadline() private view returns (uint256){
        return block.timestamp + 60;
    }

    //Given X input tokens, return Y output tokens without concern about minimum/slippage
    function swapTokens(uint256 amount, IBEP20 inputToken, IBEP20 outputToken) private {
        if (address(inputToken) == address(outputToken)) {
            return;
        }

        address[] storage path = getRouterPath(address(inputToken), address(outputToken));
        require(path.length > 0, "swapTokens: NO PATH");

        inputToken.safeApprove(routerAddr, amount);
        IPancakeRouter02(routerAddr).swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amount,
            0,
            path,
            address(this),
            getTxDeadline()
        );
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value : value}(new bytes(0));
        require(success, 'safeTransferETH: ETH_TRANSFER_FAILED');
    }

    //In case of problems or deprecation of houseChef or other problems, withdraw fees instead of continue to refill
    function emergencyWithdraw(IBEP20 token) external onlyOwner {
        uint256 balance = token.balanceOf(address(this));
        token.safeTransfer(feeHolder, balance);
        emit EmergencyWithdraw(msg.sender, address(token), balance);
    }

    function setFeeDevShare(uint16 _feeDevShareBP) external onlyOwner {
        feeDevShareBP = _feeDevShareBP;
        emit SetFeeDevShare(msg.sender, _feeDevShareBP);
    }

    function setSchedulerAddr(address newAddr) external onlyOwner {
        schedulerAddr = newAddr;
        emit SetSchedulerAddress(msg.sender, newAddr);
    }

    function upgradeFeeProcessor(address newAddr) external onlyOwner {
        incubatorChef.setFeeAddress(newAddr);
        emit ProcessorDeprecate(msg.sender, newAddr);
    }
}
