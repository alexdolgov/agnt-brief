// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {IVifMaking} from "./base/IVifMaking.sol";
import {IVifTaking} from "./base/IVifTaking.sol";
import {IVifCore} from "./base/IVifCore.sol";
import {IVifAuthorizer} from "./base/IVifAuthorizer.sol";
import {IVifManager} from "./base/IVifManager.sol";
import {IExtLoad} from "./eip2330/IExtLoad.sol";

interface IVif is IVifMaking, IVifTaking, IVifCore, IVifAuthorizer, IVifManager, IExtLoad {}
