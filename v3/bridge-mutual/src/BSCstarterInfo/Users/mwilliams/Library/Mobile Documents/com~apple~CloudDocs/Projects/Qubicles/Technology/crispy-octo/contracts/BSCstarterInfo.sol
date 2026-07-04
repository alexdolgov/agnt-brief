// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./lib/Ownable.sol";
import "./lib/SafeMath.sol";
import "./STARTPresale.sol";

contract BSCstarterInfo is Ownable {
    using SafeMath for uint256;

    uint256 private devFeePercentage = 2; // fees going to dev AND BSCS hodlers (2% each)
    uint256 private minDevFeeInWei = 5 ether; // min fee amount going to dev AND BSCS hodlers
    uint256 private maxRewardQualifyBal = 20000 * 1e18; // max amount to HODL to qualify for BNB fee rewards
    uint256 private minRewardQualifyBal = 1250 * 1e18; // min amount to HODL to qualify for BNB fee rewards
    uint256 private minRewardQualifyPercentage = 10; // percentage of discount on tokens for qualifying holders
    uint256 private presaleGrantAmount = 100 * 1e18; // grant given to 'good' projects 30 days after raise
    address private incubatorMsigAddress; // community address used to release presale incubator grants

    address[] private presaleAddresses; // track all presales created
    address[] private presaleGrantAddresses; // track all presale grants assigned

    uint256 private minInvestorBSCSBalance = 100 * 1e18; // min amount to investors HODL BSCS balance
    uint256 private minStakeTime = 24 hours;
    uint256 private minUnstakeTime = 24 hours;
    uint256 private minClaimTime = 7 days;

    address payable[] private bscsTokenPresales;

    address private pancakeSwapRouter =
        address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
    address private pancakeSwapFactory =
        address(0xBCfCcbde45cE874adCB698cC183deBcF17952812);
    address private wbnb = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    address private bscsFactoryAddress;

    constructor(address payable[] memory _bscsTokenPresales) public {
        bscsTokenPresales = _bscsTokenPresales;
    }

    modifier onlyFactory() {
        require(bscsFactoryAddress == msg.sender);
        _;
    }

    function getBscsFactoryAddress() external view returns (address) {
        return bscsFactoryAddress;
    }

    function setBscsFactoryAddress(address _newFactoryAddress)
        external
        onlyOwner
    {
        bscsFactoryAddress = _newFactoryAddress;
    }

    function addPresaleAddress(address _presale)
        external
        onlyFactory
        returns (uint256)
    {
        presaleAddresses.push(_presale);
        return presaleAddresses.length - 1;
    }

    function getPresalesCount() external view returns (uint256) {
        return presaleAddresses.length;
    }

    function getPresaleAddress(uint256 bscsId) external view returns (address) {
        return presaleAddresses[bscsId];
    }

    function addPresaleGrantAddress(address _presaleGrant)
        external
        onlyFactory
        returns (uint256)
    {
        presaleGrantAddresses.push(_presaleGrant);
        return presaleGrantAddresses.length - 1;
    }

    function getPresaleGrantsCount() external view returns (uint256) {
        return presaleGrantAddresses.length;
    }

    function getPresaleGrantAddress(uint256 _id)
        external
        view
        returns (address)
    {
        return presaleGrantAddresses[_id];
    }

    function getDevFeePercentage() external view returns (uint256) {
        return devFeePercentage;
    }

    function setDevFeePercentage(uint256 _devFeePercentage) external onlyOwner {
        devFeePercentage = _devFeePercentage;
    }

    function getMinDevFeeInWei() external view returns (uint256) {
        return minDevFeeInWei;
    }

    function setMinDevFeeInWei(uint256 _minDevFeeInWei) external onlyOwner {
        minDevFeeInWei = _minDevFeeInWei;
    }

    function getPresaleGrantAmount() external view returns (uint256) {
        return presaleGrantAmount;
    }

    function setPresaleGrantAmount(uint256 _presaleGrantAmount)
        external
        onlyOwner
    {
        require(
            _presaleGrantAmount <= 5000 * 1e18,
            "Invalid presale grant amount"
        );
        presaleGrantAmount = _presaleGrantAmount;
    }

    function getIncubatorMsigAddress() external view returns (address) {
        return incubatorMsigAddress;
    }

    function setIncubatorMsigAddress(address _incubatorMsigAddress)
        external
        onlyOwner
    {
        incubatorMsigAddress = _incubatorMsigAddress;
    }

    function getMinRewardQualifyPercentage() external view returns (uint256) {
        return minRewardQualifyPercentage;
    }

    function setMinRewardQualifyPercentage(uint256 _minRewardQualifyPercentage)
        external
        onlyOwner
    {
        minRewardQualifyPercentage = _minRewardQualifyPercentage;
    }

    function getMinRewardQualifyBal() external view returns (uint256) {
        return minRewardQualifyBal;
    }

    function setMinRewardQualifyBal(uint256 _minRewardQualifyBal)
        external
        onlyOwner
    {
        minRewardQualifyBal = _minRewardQualifyBal;
    }

    function getMaxRewardQualifyBal() external view returns (uint256) {
        return maxRewardQualifyBal;
    }

    function setMaxRewardQualifyBal(uint256 _maxRewardQualifyBal)
        external
        onlyOwner
    {
        maxRewardQualifyBal = _maxRewardQualifyBal;
    }

    function getMinInvestorBSCSBalance() external view returns (uint256) {
        return minInvestorBSCSBalance;
    }

    function setMinInvestorBSCSBalance(uint256 _minInvestorBSCSBalance)
        external
        onlyOwner
    {
        minInvestorBSCSBalance = _minInvestorBSCSBalance;
    }

    function getMinStakeTime() external view returns (uint256) {
        return minStakeTime;
    }

    function setMinStakeTime(uint256 _minStakeTime) external onlyOwner {
        minStakeTime = _minStakeTime;
    }

    function getMinUnstakeTime() external view returns (uint256) {
        return minUnstakeTime;
    }

    function setMinUnstakeTime(uint256 _minUnstakeTime) external onlyOwner {
        minUnstakeTime = _minUnstakeTime;
    }

    function getMinClaimTime() external view returns (uint256) {
        return minClaimTime;
    }

    function setMinClaimTime(uint256 _minClaimTime) external onlyOwner {
        minClaimTime = _minClaimTime;
    }

    function getBscsTokenPresales()
        external
        view
        returns (address payable[] memory)
    {
        return bscsTokenPresales;
    }

    function setBscsTokenPresales(address payable[] memory _bscsTokenPresales)
        external
        onlyOwner
    {
        bscsTokenPresales = _bscsTokenPresales;
    }

    function getLockedBalance(address payable sender)
        external
        view
        returns (uint256 totalLockedBalance)
    {
        totalLockedBalance = 0;
        for (uint256 i = 0; i < bscsTokenPresales.length; i++) {
            STARTPresale tokenPresale = STARTPresale(bscsTokenPresales[i]);

            uint256 senderInvestment = tokenPresale.investments(sender);
            uint256 senderClaimed = tokenPresale.claimed(sender);
            if (senderInvestment > 0 && senderClaimed < 4) {
                uint256 poolTokenPriceInWei = tokenPresale.tokenPriceInWei();
                uint256 poolLockedBalance =
                    senderInvestment
                        .div(4)
                        .mul(4 - senderClaimed)
                        .mul(1e18)
                        .div(poolTokenPriceInWei);
                totalLockedBalance = totalLockedBalance.add(poolLockedBalance);
            }
        }
    }

    function getPancakeSwapRouter() external view returns (address) {
        return pancakeSwapRouter;
    }

    function setPancakeSwapRouter(address _pancakeSwapRouter)
        external
        onlyOwner
    {
        pancakeSwapRouter = _pancakeSwapRouter;
    }

    function getPancakeSwapFactory() external view returns (address) {
        return pancakeSwapFactory;
    }

    function setPancakeSwapFactory(address _pancakeSwapFactory)
        external
        onlyOwner
    {
        pancakeSwapFactory = _pancakeSwapFactory;
    }

    function getWBNB() external view returns (address) {
        return wbnb;
    }

    function setWBNB(address _wbnb) external onlyOwner {
        wbnb = _wbnb;
    }
}
