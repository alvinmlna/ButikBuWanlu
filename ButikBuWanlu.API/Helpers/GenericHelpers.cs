using System;

namespace ButikBuWanlu.API.Helpers
{
    public static class GenericHelpers
    {
        public static string GetUntilOrEmpty(this string text, string stopAt = "=")
        {
            if (!String.IsNullOrWhiteSpace(text))
            {
                int charLocation = text.IndexOf(stopAt, StringComparison.Ordinal);

                if (charLocation > 0)
                {
                    return text.Substring(0, charLocation);
                }
            }

            return String.Empty;
        }
    }
}
