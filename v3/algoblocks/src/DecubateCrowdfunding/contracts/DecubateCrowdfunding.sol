// SPDX-License-Identifier: MIT

//** Decubate Crowdfunding Contract */
//** Author: Aceson & Aaron 2022.2 */

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "./interfaces/IDecubateCrowdfunding.sol";
import "./interfaces/IDecubateInvestments.sol";
import "./interfaces/IDecubateWalletStore.sol";
import "./interfaces/IDecubateTiers.sol";

contract DecubateCrowdfunding is IDecubateCrowdfunding, Ownable, ReentrancyGuard {
  using SafeMath for uint256;
  using SafeMath for uint8;
  using SafeERC20 for IERC20;

  /**
   *
   * @dev InvestorInfo is the struct type which store investor information
   *
   */
  struct InvestorInfo {
    uint256 joinDate;
    uint256 investAmount;
    address wallet;
    bool active;
  }

  struct InvestorAllocation {
    uint256 shares;
    bool active;
  }

  /**
   *
   * @dev AgreementInfo will have information about agreement.
   * It will contains agreement details between innovator and investor.
   * For now, innovatorWallet will reflect owner of the platform.
   *
   */
  struct AgreementInfo {
    address innovatorWallet;
    uint256 softcap;
    uint256 hardcap;
    uint256 createDate;
    uint256 startDate;
    uint256 endDate;
    uint16 gaMulti;
    IERC20 token;
    uint256 vote;
    uint256 totalInvestFund;
    mapping(address => InvestorInfo) investorList;
  }

  /* keccak256("I agree to the terms and conditions") */
  bytes32 internal constant AGREEMENT_HASH =
    0x5092667f9e8ff6ee71b4390edf6b0f5e27a1a54e802444fa8c980c19a04c550d;

  /**
   *
   * @dev this variable is the instance of wallet storage
   *
   */
  IDecubateWalletStore private _walletStore;

  /**
   *
   * @dev this variable stores total number of participants
   *
   */
  address[] private _participants;

  /**
   *
   * @dev this variable stores total number of registered users
   *
   */
  address[] private _registeredUsers;

  /**
   *
   * @dev this variable is the instance of investment contract
   *
   */
  IDecubateInvestments private _investment;

  /**
   *
   * @dev dcbAgreement store agreements info of this contract.
   *
   */
  AgreementInfo public dcbAgreement;

  /**
   *
   * @dev this variable is the instance of tiers contract
   *
   */
  IDecubateTiers private _tiers;

  /**
   *
   * @dev userAllocation stores each users allocated amount
   *
   */
  mapping(address => InvestorAllocation) public userAllocation;
  mapping(address => bool) public isComplied;

  uint8[] public weights = [5, 10, 20, 50, 100, 200];
  uint256 public totalShares;

  constructor(
    address _walletStoreAddr,
    address _investmentAddr,
    address _tiersAddr,
    address _innovator,
    uint256 _softcap,
    uint256 _hardcap,
    uint256 _startDate,
    uint16 _gaMulti,
    address _token
  ) {
    _walletStore = IDecubateWalletStore(_walletStoreAddr);
    _investment = IDecubateInvestments(_investmentAddr);
    _tiers = IDecubateTiers(_tiersAddr);

    /** generate the new agreement */
    dcbAgreement.innovatorWallet = _innovator;
    dcbAgreement.softcap = _softcap;
    dcbAgreement.hardcap = _hardcap;
    dcbAgreement.createDate = block.timestamp;
    dcbAgreement.startDate = _startDate;
    dcbAgreement.endDate = _startDate + 24 hours;
    dcbAgreement.token = IERC20(_token);
    dcbAgreement.vote = 0;
    dcbAgreement.totalInvestFund = 0;
    dcbAgreement.gaMulti = _gaMulti;

    /** emit the agreement generation event */
    emit CreateAgreement();
  }

  /**
   *
   * @dev set a users allocation
   *
   * @param {_sig} Signature from the user
   *
   * @return {bool} return status of operation
   *
   */
  function registerForAllocation(bytes memory _sig) external override returns (bool) {
    address user = ECDSA.recover(ECDSA.toEthSignedMessageHash(AGREEMENT_HASH), _sig);
    require(msg.sender == user, "Invalid signer");

    (bool _flag, uint256 _tier, uint256 _multi) = _tiers.getTierOfUser(msg.sender);

    require(_flag, "User not part of any tier");
    require(_walletStore.isVerified(msg.sender), "User is not verified");
    require(!userAllocation[msg.sender].active, "Already registered");
    require(block.timestamp <= dcbAgreement.startDate.sub(1 hours), "Registration closed");

    uint256 shares = weights[_tier].mul(_multi);

    userAllocation[msg.sender].active = true;
    userAllocation[msg.sender].shares = shares;
    isComplied[msg.sender] = true;
    _registeredUsers.push(msg.sender);

    totalShares = totalShares.add(shares);
    return true;
  }

  function acceptTerms(bytes memory _sign) external override returns (bool) {
    require(block.timestamp >= dcbAgreement.startDate.sub(1 hours), "Use register for allocation");
    require(_walletStore.isVerified(msg.sender), "User is not verified");

    address signer = ECDSA.recover(ECDSA.toEthSignedMessageHash(AGREEMENT_HASH), _sign);
    require(msg.sender == signer, "Invalid signer");
    isComplied[msg.sender] = true;

    return true;
  }

  function addUsers(
    address[] memory _user,
    uint256[] memory _tier,
    uint256[] memory _multi
  ) external onlyOwner {
    require(_user.length == _tier.length && _user.length == _multi.length, "Invalid input");
    uint256 len = _user.length;
    uint256 shares;

    for (uint16 i = 0; i < len; i++) {
      shares = weights[_tier[i]].mul(_multi[i]);

      userAllocation[_user[i]].active = true;
      userAllocation[_user[i]].shares = shares;
      isComplied[_user[i]] = true;
      _registeredUsers.push(_user[i]);

      totalShares = totalShares.add(shares);
    }
  }

  /**
   *
   * @dev set the terms of the agreement
   *
   * @param {_softcap} minimum amount to raise
   * @param {_hardcap} maximum amount to raise
   * @param {_startDate} date the fundraising starts
   * @param {_gaMulti} guaranteed allocation multiplier
   * @param {_token} token being used for fundraising
   * @return {bool} return status of operation
   *
   */
  function setDCBAgreement(
    uint256 _softcap,
    uint256 _hardcap,
    uint256 _startDate,
    uint16 _gaMulti,
    address _token
  ) external override onlyOwner returns (bool) {
    dcbAgreement.softcap = _softcap;
    dcbAgreement.hardcap = _hardcap;
    dcbAgreement.startDate = _startDate;
    dcbAgreement.endDate = _startDate + 24 hours;
    dcbAgreement.token = IERC20(_token);
    dcbAgreement.gaMulti = _gaMulti;
    return true;
  }

  /**
   *
   * @dev set wallet store address for contract
   *
   * @param {_contract} address of wallet store
   * @return {bool} return status of operation
   *
   */
  function setWalletStoreAddress(address _contract) external override onlyOwner returns (bool) {
    _walletStore = IDecubateWalletStore(_contract);
    return true;
  }

  /**
   *
   * @dev set decubate investment contract address
   *
   * @param {_contract} address of investment contract
   * @return {bool} return status of operation
   *
   */
  function setInvestmentAddress(address _contract) external override onlyOwner returns (bool) {
    _investment = IDecubateInvestments(_contract);
    return true;
  }

  /**
   *
   * @dev set weight value for each tier
   *
   * @param {_values} value of each weight
   * @return {bool} return status of operation
   *
   */
  function setWeights(uint8[] calldata _values) external override onlyOwner returns (bool) {
    weights = _values;
    return true;
  }

  /**
   *
   * @dev set decubate tiers contract address
   *
   * @param {_contract} address of investment contract
   * @return {bool} return status of operation
   *
   */
  function setTiersAddress(address _contract) external override onlyOwner returns (bool) {
    _tiers = IDecubateTiers(_contract);
    return true;
  }

  /**
   *
   * @dev set innovator wallet
   *
   * @param {_innovator} address of innovator
   * @return {bool} return status of operation
   *
   */
  function setInnovatorAddress(address _innovator) external override returns (bool) {
    require(msg.sender == dcbAgreement.innovatorWallet, "Only innovator can change");
    dcbAgreement.innovatorWallet = _innovator;

    return true;
  }

  /**
   *
   * @dev investor join available agreement. Already complied users can pass empty signature
   *
   * @param {uint256} Deposit amount
   * @param {bytes} Signature of user
   *
   * @return {bool} return if investor successfully joined to the agreement
   *
   */
  function fundAgreement(uint256 _investFund) external override nonReentrant returns (bool) {
    InvestorAllocation memory user = userAllocation[msg.sender];

    /** check if investor is willing to invest any funds */
    require(_investFund > 0, "You cannot invest 0");

    /** check if startDate has started */
    require(block.timestamp >= dcbAgreement.startDate, "Crowdfunding not open");

    /** check if endDate has already passed */
    require(block.timestamp < dcbAgreement.endDate, "Crowdfunding ended");

    require(
      dcbAgreement.totalInvestFund.add(_investFund) <= dcbAgreement.hardcap,
      "Hardcap already met"
    );

    require(isComplied[msg.sender], "User has not registered");

    // is gauranteed allocation round
    bool isGa = block.timestamp < dcbAgreement.startDate.add(2 hours);

    // Allocation of user
    uint256 alloc;

    if (isGa) {
      require(user.active, "User does not have any allocation");
      alloc = getUserAllocation(msg.sender);
    } else {
      (bool _flag, uint256 _tier, uint256 _multi) = _tiers.getTierOfUser(msg.sender);
      if (_flag) {
        alloc = getAllocationForTier(uint8(_tier), uint8(_multi));
      }
    }

    // during FCFS users get multiplied allocation
    require(
      dcbAgreement.investorList[msg.sender].investAmount.add(_investFund) <=
        alloc.mul(isGa ? 10 : dcbAgreement.gaMulti).div(10),
      "Amount is greater than allocation"
    );

    if (!dcbAgreement.investorList[msg.sender].active) {
      /** add new investor to investor list for specific agreeement */
      dcbAgreement.investorList[msg.sender].wallet = msg.sender;
      dcbAgreement.investorList[msg.sender].investAmount = _investFund;
      dcbAgreement.investorList[msg.sender].joinDate = block.timestamp;
      dcbAgreement.investorList[msg.sender].active = true;
      _participants.push(msg.sender);
    }
    // user has already deposited so update the deposit
    else {
      dcbAgreement.investorList[msg.sender].investAmount = dcbAgreement
        .investorList[msg.sender]
        .investAmount
        .add(_investFund);
    }

    dcbAgreement.totalInvestFund = dcbAgreement.totalInvestFund.add(_investFund);

    _investment.setUserInvestment(
      msg.sender,
      address(this),
      dcbAgreement.investorList[msg.sender].investAmount
    );

    dcbAgreement.token.transferFrom(msg.sender, address(this), _investFund);

    emit NewInvestment(msg.sender, _investFund);

    return true;
  }

  /**
   *
   * @dev boilertemplate function for innovator to claim funds
   *
   * @param {address}
   *
   * @return {bool} return status of claim
   *
   */
  function claimInnovatorFund() external override nonReentrant returns (bool) {
    require(msg.sender == dcbAgreement.innovatorWallet, "Only innovator can claim");

    /** check if endDate already passed and softcap is reached */
    require(
      (block.timestamp >= dcbAgreement.endDate &&
        dcbAgreement.totalInvestFund >= dcbAgreement.softcap) ||
        dcbAgreement.totalInvestFund >= dcbAgreement.hardcap,
      "Date and cap not met"
    );

    /** check if treasury have enough funds to withdraw to innovator */
    require(
      dcbAgreement.token.balanceOf(address(this)) >= dcbAgreement.totalInvestFund,
      "Not enough funds in treasury"
    );

    /** 
          transfer token from treasury to innovator
      */
    dcbAgreement.token.transfer(dcbAgreement.innovatorWallet, dcbAgreement.totalInvestFund);

    emit ClaimFund();
    return true;
  }

  /**
   *
   * @dev we will have function to transfer stable coins to company wallet
   *
   * @param {address} token address
   *
   * @return {bool} return status of the transfer
   *
   */

  function transferToken(uint256 _amount, address _to) external override onlyOwner returns (bool) {
    /** check if treasury have enough funds  */
    require(dcbAgreement.token.balanceOf(address(this)) >= _amount, "Not enough funds in treasury");
    dcbAgreement.token.transfer(_to, _amount);

    emit TransferFund(_amount, _to);
    return true;
  }

  /**
   *
   * @dev Users can claim back their token if softcap isn't reached
   *
   * @return {bool} return status of the refund
   *
   */

  function refund() external override nonReentrant returns (bool) {
    /** check if user is an investor */
    require(dcbAgreement.investorList[msg.sender].wallet == msg.sender, "User is not an investor");
    /** check if softcap has already reached */
    require(dcbAgreement.totalInvestFund < dcbAgreement.softcap, "Softcap already reached");
    /** check if end date have passed or not */
    require(block.timestamp >= dcbAgreement.endDate, "End date not reached");
    uint256 _amount = dcbAgreement.investorList[msg.sender].investAmount;

    /** check if contract have enough balance*/
    require(dcbAgreement.token.balanceOf(address(this)) >= _amount, "Not enough funds in treasury");
    dcbAgreement.investorList[msg.sender].active = false;
    dcbAgreement.investorList[msg.sender].wallet = address(0);
    dcbAgreement.totalInvestFund = dcbAgreement.totalInvestFund.sub(
      dcbAgreement.investorList[msg.sender].investAmount
    );

    dcbAgreement.investorList[msg.sender].investAmount = 0;

    _investment.setUserInvestment(msg.sender, address(this), 0);

    dcbAgreement.token.transfer(msg.sender, _amount);

    emit RefundProcessed(msg.sender, _amount);

    return true;
  }

  /**
   *
   * @dev getter function for list of participants
   *
   * @return {uint256} return total participant count of crowdfunding
   *
   */
  function getParticipants() external view returns (address[] memory) {
    return _participants;
  }

  function getRegisteredUsers() external view returns (address[] memory) {
    return _registeredUsers;
  }

  /**
   *
   * @dev Retrieve total amount of token from the contract
   *
   * @param {address} address of the token
   *
   * @return {uint256} total amount of token
   *
   */
  function getTotalToken() external view override returns (uint256) {
    return dcbAgreement.token.balanceOf(address(this));
  }

  function userInvestment(address _address)
    external
    view
    override
    returns (uint256 investAmount, uint256 joinDate)
  {
    investAmount = dcbAgreement.investorList[_address].investAmount;
    joinDate = dcbAgreement.investorList[_address].joinDate;
  }

  /**
   *
   * @dev getter function for ticket value of a tier
   *
   * @param _tier Tier value
   * @param _multi multiplier if applicable (default 1)
   *
   * @return return total participant count of crowdfunding
   *
   */
  function getAllocationForTier(uint8 _tier, uint8 _multi) public view returns (uint256) {
    return ((weights[_tier].mul(_multi).mul(dcbAgreement.hardcap)).div(totalShares));
  }

  /**
   *
   * @dev getter function for allocation of a user
   *
   * @param _address Address of the user
   *
   * @return return total participant count of crowdfunding
   *
   */
  function getUserAllocation(address _address) public view override returns (uint256) {
    return ((userAllocation[_address].shares.mul(dcbAgreement.hardcap)).div(totalShares));
  }

  /**
   *
   * @dev getter function for total participants
   *
   * @return {uint256} return total participant count of crowdfunding
   *
   */
  function getInfo()
    public
    view
    override
    returns (
      uint256,
      uint256,
      uint256,
      uint256,
      uint256,
      uint256,
      uint256
    )
  {
    return (
      dcbAgreement.softcap,
      dcbAgreement.hardcap,
      dcbAgreement.createDate,
      dcbAgreement.startDate,
      dcbAgreement.endDate,
      dcbAgreement.totalInvestFund,
      _participants.length
    );
  }
}
