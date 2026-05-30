// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapRouterPositionPermit {
  event ClientData(bytes _clientData);
  event ZapExecuted(
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

  /// @dev Contains general data for zapping and validation
  /// @param srcInfo src position info
  /// @param zapInfo extra info, depends on each dex type
  /// @param extraData extra data to be used for validation
  struct ZapDescription {
    ERC20SrcInfo erc20SrcInfo;
    ERC721SrcInfo erc721SrcInfo;
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
    bytes[] permitData;
    bytes permit2Data;
  }

  struct ERC721SrcInfo {
    address[] tokens;
    uint256[] ids;
    bytes[] permitData;
  }

  /// @notice collect token, execute and validate zap
  function zap(ZapDescription calldata _desc, ZapExecutionData calldata _exe)
    external
    payable
    returns (bytes memory zapResults);

  function whitelistExecutors(address[] calldata _executors, bool _grantOrRevoke) external;
  function whitelistValidators(address[] calldata _validators, bool _grantOrRevoke) external;
}
