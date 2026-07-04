// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.20;

/**
 * @notice ManageAssetAndShares is used to manage the asset and shares of the yToken
 * @param yToken The address of the yToken
 * @param shares The number of shares to manage
 * @param assetAmount The amount of asset to manage
 * @param updateAsset Whether to update the asset
 * @param isMint Whether to mint or burn the yToken
 * @param isNewYToken Whether the yToken is new, only utilised in vyToken and vyTokenL2 whenever asset from outside of 
        YieldFi is deposited into the protocol (i.e during deposits and yield distribution)
  */
struct ManageAssetAndShares {
    address yToken;
    uint256 shares;
    uint256 assetAmount;
    bool updateAsset;
    bool isMint;
    bool isNewYToken;
}
interface IManager {
    event Deposit(address indexed caller, address indexed asset, uint256 amount, address indexed receiver, address yToken, uint256 shares, uint256 feeShare, uint256 gasFeeShare);
    event Withdraw(address indexed caller, address indexed asset, uint256 amount, address indexed receiver, address yToken, uint256 shares, uint256 feeShare, uint256 gasFeeShare);
    event Rescue(address indexed caller, address indexed token, address indexed to, uint256 amount);
    event AssetStatus(bool indexed orderType, address indexed yToken, address indexed asset, bool status);
    event OrderRequest(address caller, address indexed yToken, address indexed asset, address indexed receiver, uint256 amount, bool orderType, uint256 exchangeRateInUnderlying, uint256 receiptId, bytes32 referralCode);
    event YieldFeesTransferred(address indexed treasury, address indexed yToken, uint256 shares);
    event AssetAndShareManaged(address indexed caller, address indexed yToken, uint256 shares, uint256 assetAmount, bool updateAsset, bool isMint, bool isNewYToken);
    event TreasurySet(address indexed caller, address indexed treasury);
    event ReceiptSet(address indexed caller, address indexed receipt);
    event CustodyWalletSet(address indexed caller, address indexed wallet, bool status);
    event MinSharesInYTokenSet(address indexed caller, address indexed yToken, uint256 minShares);

    function deposit(address _yToken, address _asset, uint256 _amount, address _receiver, address _callback, bytes calldata _callbackData, bytes32 _referralCode) external;
    function redeem(address caller, address _yToken, address _asset, uint256 _shares, address _receiver, address _callback, bytes calldata _callbackData) external;
    function executeOrder(uint256 _receiptId, uint256 _amount, uint256 _fee, uint256 _gas) external;
    function transferToCustodyWallet(address _token, address _receiver, uint256 _amount) external;
    function treasury() external view returns (address);
    function manageAssetAndShares(address _to, ManageAssetAndShares memory _manageAssetAndShares) external;
    function minSharesInYToken(address _yToken) external view returns (uint256);
}
