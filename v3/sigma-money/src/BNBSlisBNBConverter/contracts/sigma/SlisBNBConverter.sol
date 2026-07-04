// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "../interfaces/sigma/IListaStakeManager.sol";
import "../interfaces/sigma/ISlisBNBConverter.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

abstract contract SlisBNBConverter is Ownable2StepUpgradeable, ISlisBNBConverter {
  uint256 private constant PRECISION = 1e18;

  address public immutable slisBNB;
  address public immutable asset;
  address public immutable listaStakeManager;

  mapping(uint256 => address) public requestUUIDToUser;
  mapping(address => uint256) public userRequestCount;

  constructor(address _slisBNB, address _asset, address _listaStakeManager) {
    require(_slisBNB != address(0), "slisBNB is zero address");
    require(_listaStakeManager != address(0), "listaStakeManager is zero address");
    slisBNB = _slisBNB;
    asset = _asset;
    listaStakeManager = _listaStakeManager;
  }

  function initialize() external initializer {
    __Ownable_init(msg.sender);
  }

  function convertAssetToSlisBNB(uint256 amount) external payable virtual returns (uint256);

  function convertSlisBNBToAssetInstant(uint256 amount) external virtual returns (uint256 assetAmount);

  function convertSlisBNBToAssetRequest(address user, uint256 amount) external virtual returns (uint256 requestUUID);

  function claimRequest(address user, uint256 requestUUID) external virtual returns (uint256 assetAmount);

  function rateAssetToSlisBNB() external view virtual returns (uint256);

  function rateSlisBNBToAssetInstant() external view virtual returns (uint256);

  function rateSlisBNBToAssetRequest() external view virtual returns (uint256);

  function rateBNBToAsset() public view virtual returns (uint256);

  function getUserWithdrawalRequests(address user) external view returns (UserWithdrawalRequest[] memory userRequests) {
    uint256 count = userRequestCount[user];
    IListaStakeManager.WithdrawalRequest[] memory requests = IListaStakeManager(listaStakeManager)
      .getUserWithdrawalRequests(address(this));

    userRequests = new UserWithdrawalRequest[](count);

    for (uint256 i = 0; i < requests.length; i++) {
      if (requestUUIDToUser[requests[i].uuid] == user) {
        (bool isClaimable, uint256 amount) = IListaStakeManager(listaStakeManager).getUserRequestStatus(
          address(this),
          i
        );

        userRequests[i] = UserWithdrawalRequest({
          uuid: requests[i].uuid,
          bnbAmount: amount,
          assetAmount: (amount * rateBNBToAsset()) / PRECISION,
          startTime: requests[i].startTime,
          isClaimable: isClaimable
        });
      }
    }
  }

  function _convertBNBToSlisBNB(uint256 amount) internal returns (uint256 amountOfSlisBNB) {
    uint256 balanceBefore = IERC20(slisBNB).balanceOf(address(this));
    IListaStakeManager(listaStakeManager).deposit{ value: amount }();
    amountOfSlisBNB = IERC20(slisBNB).balanceOf(address(this)) - balanceBefore;
  }

  function _convertSlisBNBToBNB(address user, uint256 amount) internal returns (uint256 requestUUID) {
    require(user != address(0), "User is zero address");
    require(amount > 0, "Amount must be greater than zero");

    IListaStakeManager(listaStakeManager).requestWithdraw(amount);
    requestUUID = IListaStakeManager(listaStakeManager).requestUUID();
    IListaStakeManager(listaStakeManager).getUserRequestStatus(address(this), requestUUID);
    requestUUIDToUser[requestUUID] = user;
    userRequestCount[user] += 1;
  }

  function _withdrawRequest(address user, uint256 requestUUID) internal returns (uint256 bnbAmount) {
    require(requestUUIDToUser[requestUUID] == user, "RequestUUID does not belong to user");

    IListaStakeManager.WithdrawalRequest[] memory requests = IListaStakeManager(listaStakeManager)
      .getUserWithdrawalRequests(address(this));

    bool found = false;
    for (uint256 i = 0; i < requests.length; i++) {
      if (requests[i].uuid == requestUUID) {
        (bool isClaimable, uint256 amountOfBNB) = IListaStakeManager(listaStakeManager).getUserRequestStatus(
          address(this),
          i
        );
        bnbAmount = amountOfBNB;

        require(isClaimable, "Request is not claimable");
        userRequestCount[user] -= 1;
        found = true;

        IListaStakeManager(listaStakeManager).claimWithdraw(i);
      }
    }

    require(found, "RequestUUID not found");
  }

  function _rateBNBToSlisBNB() internal view returns (uint256) {
    return IListaStakeManager(listaStakeManager).convertSnBnbToBnb(PRECISION);
  }

  function _rateSlisBNBToBNB() internal view returns (uint256) {
    return IListaStakeManager(listaStakeManager).convertSnBnbToBnb(PRECISION);
  }
}
