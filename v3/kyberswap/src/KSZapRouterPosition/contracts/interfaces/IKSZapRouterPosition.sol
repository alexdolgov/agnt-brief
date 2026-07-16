// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

interface IKSZapRouterPosition {
  event ClientData(bytes _clientData);
  event ZapExecuted(
    uint8 indexed _dexType,
    bytes indexed _srcInfo,
    address _validator,
    address _executor,
    bytes _zapInfo,
    bytes _extraData,
    bytes _initialData,
    bytes _zapResults
  );
  event ExecutorWhitelisted(address indexed _executor, bool indexed _grantOrRevoke);
  event ValidatorWhitelisted(address indexed _validator, bool indexed _grantOrRevoke);
  event ERC20Collected(address indexed _token, uint256 indexed _amount);
  event ERC721Collected(address indexed _token, uint256 indexed _id);
  event ERC1155Collected(address indexed _token, uint256 indexed _id, uint256 indexed _amount);

  /// @dev Contains general data for zapping and validation
  /// @param zapFlags packed value of dexType (uint8) | srcType (uint8)
  /// @param srcInfo src position info
  /// @param zapInfo extra info, depends on each dex type
  /// @param extraData extra data to be used for validation
  struct ZapDescription {
    uint16 zapFlags;
    bytes srcInfo;
    bytes zapInfo;
    bytes extraData;
  }

  /// @dev Contains execution data for zapping
  /// @param validator validator address, must be whitelisted one
  /// @param executor zap executor address, must be whitelisted one
  /// @param deadline make sure the request is not expired yet
  /// @param executorData data for zap execution
  /// @param clientData for events and tracking purposes
  struct ZapExecutionData {
    address validator;
    address executor;
    uint32 deadline;
    bytes executorData;
    bytes clientData;
  }

  /// @dev Contains address and function for the delegatecall
  /// @param helper helper address
  /// @param funcSelector helper function
  struct DelegatecallData {
    address helper;
    bytes4 funcSelector;
  }

  struct ERC20SrcInfo {
    address[] tokens;
    uint256[] amounts;
  }

  struct ERC721SrcInfo {
    address[] tokens;
    uint256[] ids;
  }

  struct ERC1155SrcInfo {
    address[] tokens;
    uint256[] ids;
    uint256[] amounts;
    bytes[] datas;
  }

  /// @notice collect token, execute and validate zap
  function zap(
    ZapDescription calldata _desc,
    ZapExecutionData calldata _exe
  ) external payable returns (bytes memory zapResults);

  function whitelistExecutors(address[] calldata _executors, bool _grantOrRevoke) external;
  function whitelistValidators(address[] calldata _validators, bool _grantOrRevoke) external;
}
