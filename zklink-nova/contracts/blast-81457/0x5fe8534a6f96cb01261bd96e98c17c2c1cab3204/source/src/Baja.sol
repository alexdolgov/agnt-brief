// SPDX-License-Identifier: AGPL-3.0-only+LicenseRef-VPL
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "solady/src/auth/Ownable.sol";
import "solady/src/tokens/ERC20.sol";

import "./EIP712.sol";

error AllClaimed();
error AlreadyClaimed();
error CannotClaimInvalidSignature();

enum YieldMode {
  AUTOMATIC,
  VOID,
  CLAIMABLE
}

enum GasMode {
  VOID,
  CLAIMABLE 
}

interface IBlast{
  function configure(YieldMode _yield, GasMode gasMode, address governor) external;
  function claimAllYield(address contractAddress, address recipientOfYield) external returns (uint256);
  function claimAllGas(address contractAddress, address recipientOfGas) external returns (uint256);
}

contract Baja is ReentrancyGuard, Ownable, ERC20, EIP712 {
  address public signer;
  uint256 public claimed = 0;
  uint256 public claimLimit = 2070000000000_000000000000000000;

  bytes32 constant private MINT_TYPEHASH = keccak256("mint(address _claimer,uint256 _amount)");

  mapping(address => bool) public alreadyClaimed;

  constructor (address _owner, address _signer, address _disburse) EIP712("Baja", "1") {
    IBlast(0x4300000000000000000000000000000000000002).configure(YieldMode.CLAIMABLE, GasMode.CLAIMABLE, _owner);
    _initializeOwner(_owner);
    signer = _signer;
    _mint(_disburse, 4830000000000_000000000000000000);
  }

  function name() public view virtual override returns (string memory) {
    return "Baja";
  }

  function symbol() public view virtual override returns (string memory) {
    return "BAJA";
  }

  function validClaim(address _claimer, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) private view returns (bool) {
    bytes32 digest = keccak256(
      abi.encodePacked(
        "\x19\x01",
        CLAIM_DOMAIN_SEPARATOR,
        keccak256(
          abi.encode(
            MINT_TYPEHASH,
            _claimer,
            _amount
          )
        )
      )
    );
    return ecrecover(digest, _v, _r, _s) == signer;
  }

  function mint(address _claimer, uint256 _amount, uint8 _v, bytes32 _r, bytes32 _s) external payable nonReentrant {
    if (claimed + _amount <= claimLimit) {
      claimed += _amount;
      if (!alreadyClaimed[_claimer]) {
        alreadyClaimed[_claimer] = true;
        bool validSignature = validClaim(_claimer, _amount, _v, _r, _s);
        if (!validSignature) {
          revert CannotClaimInvalidSignature();
        }
        _mint(_claimer, _amount);
      } else {
        revert AlreadyClaimed();
      }
    } else {
      revert AllClaimed();
    }
  }

  function setSigner(address _signer) external payable onlyOwner {
    signer = _signer;
  }

  function claim(address _recipient) external payable onlyOwner {
    IBlast(0x4300000000000000000000000000000000000002).claimAllYield(address(this), _recipient);
    IBlast(0x4300000000000000000000000000000000000002).claimAllGas(address(this), _recipient);
  }
}
