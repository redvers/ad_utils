## From https://support.microsoft.com/en-us/help/305144/how-to-use-useraccountcontrol-to-manipulate-user-account-properties

use Bitwise
defmodule AD.Utils.UserAccessControl do
  def table do
    [
      {0x0001,     :SCRIPT},
      {0x0002,     :ACCOUNTDISABLE},
      {0x0008,     :HOMEDIR_REQUIRED},
      {0x0010,     :LOCKOUT},
      {0x0020,     :PASSWD_NOTREQD},
      {0x0040,     :PASSWD_CANT_CHANGE},
      {0x0080,     :ENCRYPTED_TEXT_PWD_ALLOWED},
      {0x0100,     :TEMP_DUPLICATE_ACCOUNT},
      {0x0200,     :NORMAL_ACCOUNT},
      {0x0800,     :INTERDOMAIN_TRUST_ACCOUNT},
      {0x1000,     :WORKSTATION_TRUST_ACCOUNT},
      {0x2000,     :SERVER_TRUST_ACCOUNT},
      {0x10000,    :DONT_EXPIRE_PASSWORD},
      {0x20000,    :MNS_LOGON_ACCOUNT},
      {0x40000,    :SMARTCARD_REQUIRED},
      {0x80000,    :TRUSTED_FOR_DELEGATION},
      {0x100000,   :NOT_DELEGATED},
      {0x200000,   :USE_DES_KEY_ONLY},
      {0x400000,   :DONT_REQ_PREAUTH},
      {0x800000,   :PASSWORD_EXPIRED},
      {0x1000000,  :TRUSTED_TO_AUTH_FOR_DELEGATION},
      {0x04000000, :PARTIAL_SECRETS_ACCOUNT}
    ]
  end

  def resolve(value) do
    Enum.map(table(), fn(row) -> test_value(value, row) end)
    |> Enum.reject(&(&1 == nil))
  end

  def test_value(value,  {hex, _atom}) when (value &&& hex) == 0, do: nil
  def test_value(_value, {_hex, atom}),                           do: atom

end
